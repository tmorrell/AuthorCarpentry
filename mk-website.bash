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

echo "Checking necessary software is installed"
softwareCheck
echo "Generating website with shorthand"
mkPage nav.md README.md index.html
echo "Generating CODATA-RDA content"
ls -1 CODATA-RDA | while read FNAME; do
    HTML_FNAME=$(basename $FNAME .md).html
    if [ "$HTML_FNAME" = "README.html" ]; then
        HTML_FNAME=index.html
    fi
    mkPage CODATA-RDA/nav.md "CODATA-RDA/$FNAME" "CODATA-RDA/$HTML_FNAME"
done
