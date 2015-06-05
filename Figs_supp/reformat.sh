for img in `ls *crop.pdf`;do
	echo $img
	convert -density 200x200 -quality 90 -compress jpeg $img $img
done
