#!/bin/bash

./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp2300/lectures/week-0/ 0-introduction
./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp2300/lectures/week-1/ 1-digital-logic 
./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp2300/lectures/week-2/ 2-ALU-operations
./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp2300/lectures/week-3/ 3-memory-operations
./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp2300/lectures/week-4/ 4-control-flow
./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp2300/lectures/week-5/ 5-functions
./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp2300/lectures/week-6/ 6-toolchains
./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp2300/lectures/week-7/ 7-data-structures
./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp2300/lectures/week-8/ 8-interrupts-async
./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp2300/lectures/week-9/ 9-networks
./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp2300/lectures/week-10/ 10-operating-systems
./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp2300/lectures/week-11/ 11-architecture
./reveal-to-pdf.sh https://cs.anu.edu.au/courses/comp2300/lectures/week-12/ 12-review

# mkdir -p comp2300-lecturenotes
mv *.pdf comp2300-lecturenotes/.
rclone copy --progress --transfers 2 comp2300-lecturenotes/ CloudStor:/comp2300-lecturenotes

