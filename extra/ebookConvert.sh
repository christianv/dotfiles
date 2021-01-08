 #!/bin/bash
file=$1

/Applications/calibre.app/Contents/MacOS/ebook-convert "$file" "${file%.epub}.mobi" --prefer-author-sort --output-profile=kindle --linearize-tables --smarten-punctuation
rm "$file" 2> /dev/null
