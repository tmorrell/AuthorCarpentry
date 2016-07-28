#!/bin/bash

function checkApp() {
    APP_NAME=$1
    if [ "$APP_NAME" = "" ]; then
        echo "Missing $APP_NAME"
        exit 1
    fi
}

function softwareCheck() {
    for APP_NAME in shorthand; do
        checkApp $APP_NAME
    done
}

function mkPage () {
    nav="$1"
    content="$2"
    html="$3"

    echo "Rendering $html from $content and $nav"
    shorthand \
        -e "{{navContent}} :import-markdown: $nav" \
        -e "{{pageContent}} :import-markdown: $content" \
        page.shorthand > $html
}

function mkSite() {
    FOLDER=$1

    echo "Generating HTML content for $FOLDER"
    find . -type f | grep -v .git | grep -E ".md$" | while read ITEM; do
        FNAME=$(basename "$ITEM")
        FOLDER=$(dirname "$ITEM")
        if [ -f "$FOLDER/$FNAME" ] && [ "$FNAME" != "nav.md" ]; then
            EXT=${FNAME:(-3)}
            if [ "$EXT" = ".md" ]; then
                HTML_FNAME=$(basename $FNAME .md).html
                if [ "$HTML_FNAME" = "README.html" ]; then
                    HTML_FNAME=index.html
                fi
                mkPage "$FOLDER/nav.md" "$FOLDER/$FNAME" "$FOLDER/$HTML_FNAME"
                git add "$FOLDER/$FNAME" "$FOLDER/$HTML_FNAME"
            fi
        fi
    done
}

echo "Checking necessary software is installed"
softwareCheck
echo "Generating website"
mkSite "."


