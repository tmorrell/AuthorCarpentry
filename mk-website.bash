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
mkPage CODATA-RDA/nav.md CODATA-RDA/lesson-01.md CODATA-RDA/index.html
