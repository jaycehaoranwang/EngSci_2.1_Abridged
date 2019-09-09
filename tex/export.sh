#!/bin/bash

# pdflatex AER210.tex 
# cp AER210.pdf ../pdf
# echo 'Successfully Outputted'

input="../classList.txt"

while IFS= read -r line
do
  echo "$line"
  pdflatex "$line".tex
  cp "$line".pdf ../pdf
done < "$input"

exit 0

