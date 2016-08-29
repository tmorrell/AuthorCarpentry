#!/bin/bash

function checkApp() {
    APP_NAME=$1
    if [ "$APP_NAME" = "" ]; then
        echo "Missing $APP_NAME"
        exit 1
    fi
}

function softwareCheck() {
    for APP_NAME in $@; do
        checkApp $APP_NAME
    done
}

function relDocPath() {
    # Source is the filename path where you writing the asset link 
    # (e.g. Holds: <link rel="stylesheet" href="... /css.site.css">)
    src=$(dirname "$1")
    # Target is the you need the relative path to (e.g. css/site.css)
    tgt="$2"
    while [ "$src" != "" ] && [ "$src" != "." ]; do
        tgt="../$tgt"
        src=$(dirname "$src")
    done
    echo "$tgt"
}

function mkPage () {
    title="$1"
    nav="$2"
    content="$3"
    html_fname="$4"

    csspath=$(relDocPath "$html_fname" "css/site.css")
    logopath=$(relDocPath "$html_fname" "assets/liblogo.gif")
    #echo "$html_fname csspath $csspath"
    #echo "$html_fname logopath $logopath"

    echo "Rendering $html_fname"
    mkpage \
        "csspath=text:$csspath" \
        "logopath=text:$logopath" \
        "title=text:$title" \
        "nav=$nav" \
        "content=$content" \
        page.tmpl > $html_fname
}

function mkSite() {
    FOLDER=$1

    echo "Generating HTML content for $FOLDER"
    find . -type f | grep -v .git | grep -E ".md$" | while read ITEM; do
        FNAME=$(basename "$ITEM")
        FOLDER=$(dirname "$ITEM")
        if [ -f "$FOLDER/$FNAME" ] && [ "$FNAME" != "nav.md" ]; then
            EXT=${FNAME:(-3)}
            # Title is based on theh folder name.
	        TITLE=${FOLDER:2}
            if [ "$EXT" = ".md" ]; then
                HTML_FNAME=$(basename $FNAME .md).html
                if [ "$HTML_FNAME" = "README.html" ]; then
                    HTML_FNAME=index.html
                fi
                # Prefer the local directory's nav.md to the root level one.
                if [ -f "$FOLDER/nav.md" ]; then
                    mkPage "$TITLE" "$FOLDER/nav.md" "$FOLDER/$FNAME" "$FOLDER/$HTML_FNAME" 
                else 
                    mkPage "$TITLE" "nav.md" "$FOLDER/$FNAME" "$FOLDER/$HTML_FNAME" 
                fi
                git add "$FOLDER/$FNAME" "$FOLDER/$HTML_FNAME"
            fi
        fi
    done
}

echo "Checking necessary software is installed"
softwareCheck mkpage
echo "Generating website"
mkSite "."


