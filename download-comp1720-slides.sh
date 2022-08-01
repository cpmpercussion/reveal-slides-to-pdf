#!/bin/bash

./reveal-to-pdf.sh https://comp.anu.edu.au/courses/comp1720/lectures/week-1/ 1-coding-art
./reveal-to-pdf.sh https://comp.anu.edu.au/courses/comp1720/lectures/week-2/ 2-variables-and-chance
./reveal-to-pdf.sh https://comp.anu.edu.au/courses/comp1720/lectures/week-3/ 3-conditionals-and-colour
./reveal-to-pdf.sh https://comp.anu.edu.au/courses/comp1720/lectures/week-4/ 4-functions-and-critique
./reveal-to-pdf.sh https://comp.anu.edu.au/courses/comp1720/lectures/week-5/ 5-objects-and-interaction
./reveal-to-pdf.sh https://comp.anu.edu.au/courses/comp1720/lectures/week-6/ 6-code-and-art-review
./reveal-to-pdf.sh https://comp.anu.edu.au/courses/comp1720/lectures/week-7/ 7-sound-and-music-computing
./reveal-to-pdf.sh https://comp.anu.edu.au/courses/comp1720/lectures/week-8/ 8-storyboards-and-interaction-design
./reveal-to-pdf.sh https://comp.anu.edu.au/courses/comp1720/lectures/week-9/ 9-recent-developments-and-beyond
./reveal-to-pdf.sh https://comp.anu.edu.au/courses/comp1720/lectures/week-10/ 10-workingwithdata
./reveal-to-pdf.sh https://comp.anu.edu.au/courses/comp1720/lectures/week-11/ 11-simulations
./reveal-to-pdf.sh https://comp.anu.edu.au/courses/comp1720/lectures/week-12/ 12-creativeml

mv *.pdf comp1720-lecturenotes/.
rclone copy --progress --transfers 2 comp1720-lecturenotes/ CloudStor:/comp1720-lecturenotes

