
# how to build this website

We are using an experimental Markdown tool called [shorthand](https://github.com/caltechlibrary/shorthand) to build this website.
It is simpler than other systems like Jykill and easy to script in Bash.

## On a Mac

+ Open the Terminal application
+ clone this repository
+ change to the repository folder
+ "source" the *etc/setup-mac.bash* file
+ and you're ready to work

These are the command I enter after starting Terminal

```
    git clone git@github.com:caltechlibrary/AuthorCarpentry
    cd AuthorCarpentry
    . etc/setup-mac.bash
```

## On Windows

If you are on a Windows machine running Bash that comes with Git clone this repository

+ Start Bash
+ clone this repository
+ change to the repository directory
+ "source" the etc/setup-windows.bash
+ and you're ready to work

These are the command I'd enter in Bash

```
    git clone git@github.com:caltechlibrary/AuthorCarpentry
    cd AuthorCarpentry
    . etc/setup-windows.bash
```


## Work flow

1. Write/edit your content in Markdown files
2. For each level of the website you can customize the navigation links in *nav.md* as need
    + e.g. add additiona links to pages or lessons
3. In the root of your repository directory run `./mk-website.sh` to re-generate all the HTML content from your markdown
4. Check the HTML versions and see if they are what you like
5. repeat as needed

## How it works

The website is being generated using a tool call [shorthand](https://github.com/caltechlibrary/shorthand). It is a simple text label
expander that also has a built in Markdown processor (turns your Markdown into HTML). It is very friendly to being used in Bash.
We use Bash scripts (e.g. mk-website.sh) to apply *shorthand* to specific markdown files to render the desired pages.



