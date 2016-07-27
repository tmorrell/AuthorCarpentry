
# Author Carpentry CODATA-RDA

Table of contents

+ [lessons-01](./lesson-01.md)
    + Module 1A. What are Digital Object Identifiers and Why Do They Matter ?
    + Module 1B. Anatomy of the DOI System?
    + Module 1C. Metadata associated with DOIs
    + Module 1D. How do I get a Digital Object Identifier (DOI) for my material?


## NOTE: how to build a TOC from a markdown file

Assuming a '##' is a section heading try something like

```shell
    grep -E '^##' lesson-01.md | sed -e "s/\*//g" -e "s/##//g" -e "s/^\s|\s$//"\
    | while read LINE; do 
    echo "    + $LINE"; 
    done
```
