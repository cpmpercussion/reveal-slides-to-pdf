#!/bin/sh
# Author: Kunal Sareen
week=
till=

usage()
{
  echo "usage: $0 [ -w week | -t till ]"
  exit 2
}

while getopts 'w:t:?h' c
do
  case $c in
    w) week=$OPTARG ;;
    t) till=$OPTARG ;;
    h|?) usage ;;
  esac
done

if [ -z "$week" ] && [ -z "$till" ]; then
  usage
fi

if [ -z "$week" ]; then
  week=0
fi

if [ -z "$till" ]; then
  till=${week}
fi

while [ $week -le $till ]; do
  url="https://cs.anu.edu.au/courses/comp2300/lectures/week-${week}/#/title"
  name="Week-${week}"
  tmpfile=$(mktemp)

  mkdir "${name}"
  echo "convert-slides: converting week ${week} slides to pdf"
  `npm bin`/decktape --screenshots --screenshots-directory=${name} --screenshots-size=1920x1200 --screenshots-format png "${url}" "${name}".pdf
  cd "${name}"

  ls * | egrep '_[0-9]_' | sed -e 'p;s/_\([0-9]\)_/_00\1_/' | xargs -n2 mv
  ls * | egrep '_[0-9]{2}_' | sed -e 'p;s/_\([0-9]\{2\}\)_/_0\1_/' | xargs -n2 mv

  convert *.png "${name}".pdf
  mv "${name}".pdf ..

  cd ..
  rm -rf "${name}"

  echo "convert-slides: shrinking pdf size"

  # usually have to shrink twice due to large size
  ./shrink-pdf "${name}".pdf > "${tmpfile}".pdf
  mv "${tmpfile}".pdf "${name}".pdf
  ./shrink-pdf "${name}".pdf > "${tmpfile}".pdf
  mv "${tmpfile}".pdf "${name}".pdf

  echo "convert-slides: finished converting week ${week} slides"

  week=$(( week + 1 ))
done

echo "convert-slides: copy files over to varese.anu.edu.au"
rsync -auv *.pdf comp2300@varese.anu.edu.au:public_html/slides-pdf/2020/
