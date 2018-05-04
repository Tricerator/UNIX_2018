Sources=$(wildcard *.jpg)
Objects=$(Sources:.jpg=.thumb.jpg)

all: generate1 program generate2
  
generate1:
	echo "<html>" > stranka.html 
	echo "<head/>" >> stranka.html
	echo "<body>" >> stranka.html  

program: $(Objects)
	%.thumb.jpg:%.jpg
	convert $< -resize 100x100 $@
	echo "<a href="$<"><img src="$@"/></a>" >> stranka.html       
generate2:
	echo "</body>" >> stranka.html
	echo "</html>" >>stranka.html
  






