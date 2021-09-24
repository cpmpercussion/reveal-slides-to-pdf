#!/bin/bash

./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp1720/lectures/week-1/ 1a-intro
./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp1720/lectures/week-1-b/ 1b-whatisart
./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp1720/lectures/week-2/ 2a-typesvariables
./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp1720/lectures/week-2-b/ 2b-randomchance
./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp1720/lectures/week-3/ 3a-conditionalsiteration
./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp1720/lectures/week-3-b/ 3b-colour
./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp1720/lectures/week-4/ 4a-functionsarrays
./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp1720/lectures/week-4-b/ 4b-judgeart
./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp1720/lectures/week-5/ 5a-objects
./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp1720/lectures/week-5-b/ 5b-interaction
./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp1720/lectures/week-6/ 6a-code-review
./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp1720/lectures/week-6-b/ 6b-art-review
./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp1720/lectures/week-7/ 7a-sound
./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp1720/lectures/week-7-b/ 7b-soundart
./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp1720/lectures/week-8/ 8a-storyboards
./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp1720/lectures/week-8-b/ 8b-hooks
./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp1720/lectures/week-9/ 9-goingbeyond
./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp1720/lectures/week-10/ 10-workingwithdata
./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp1720/lectures/week-11/ 11-simulations
./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp1720/lectures/week-12/ 12-creativeml

mv *.pdf comp1720-lecturenotes/.
./upload-to-cloudstor.sh
