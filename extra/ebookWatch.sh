 #!/bin/bash
echo "Ebook watch started"

/usr/local/bin/fswatch -0 -e ".*" -i ".epub" --event=Created ~/Dropbox\ \(Personal\)/Documents/Books/ --event Created | xargs -0 -n 1 -I {} ~/code/dotfiles/extra/ebookConvert.sh "{}"
