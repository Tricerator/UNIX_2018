Sources=$(wildcard *.jpg)
Objects=$(Sources:.jpg=.thumb.jpg)

all: generator program GENERATOR2

generator:
	echo "<html><head/><body>" > katalog.html	


%.thumb.jpg:%.jpg
	convert $< -resize 100x100! $@
	echo "<a href="$<"><img src="$@"/></a>" >> katalog.html

program: $(Objects)

GENERATOR2:
	echo "</body></html>" >> katalog.html	
clean: 
	rm -f $(Objects) katalog.html

#####################################################################
### Tento program jsem odevzdaval po e-mailu. Od te doby jsem ho  ###
### neupravoval.                                                  ###
##################################################################:###
