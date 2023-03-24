#!/bin/bash

mkdir i_png
for vocal in *.jpg; do

	convert "$vocal" "${vocal%.jpg}.png" 
	mv *.png i_png

done 
