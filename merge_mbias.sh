 #!/bin/bash  

# find ../ -name "*cpg*O[BT].svg" -type f ! -type l -exec cp {} ../output/mbias \;

find . -name "*cpg*O[BT].svg" -type f ! -type l| while read file
do 
    # rsvg-convert -f pdf -o "../output/mbias/${$(basename $file)%.svg}.pdf" "$file"

    file2="$(basename $file)"
    echo $file $file2    
    rsvg-convert -f pdf -o "${file2%.svg}.pdf" $file
done 
# | wc -l 
# # Convert SVGs to PDFs
# for file in *cpg*.svg; do
#     rsvg-convert -f pdf -o "${file%.svg}.pdf" "$file"
# done

# cd ../output/mbias/
# Merge PDFs
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=merged.pdf *.pdf

# Clean up individual PDFs
rm [0-9]*pdf 