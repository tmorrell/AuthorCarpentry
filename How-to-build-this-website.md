

# How to build this website

These are instructions for generate [caltechlibrary.github.io/AuthorCarpentry](https://caltechlibrary.github.io/AuthorCarpentry) website.
This is includes content in the [CODATA-RDA](CODATA-RDA/) folder.

## One time setup

### On Windows

If you are on a Windows machine running Bash that comes with Git clone this repository

+ Start Bash
+ clone this repository
+ change to the repository directory
+ "source" the etc/setup-windows.bash
+ and you're ready to work

These are the command I'd enter in Bash

```shell
    git clone https://github.com/caltechlibrary/AuthorCarpentry
    cd AuthorCarpentry
    . etc/setup-windows.bash
```

NOTE: notice the space after the period the last line. This is the only command where you need that idiom in Bash.

You should now be able run the *shorthand* command and the *./mk-website.bash* script should work.

### On a Mac

+ Open the Terminal application
+ clone this repository
+ change to the repository folder
+ "source" the *etc/setup-macosx.bash* file
+ and you're ready to work

These are the command I enter after starting Terminal

```shell
    git clone https://github.com/caltechlibrary/AuthorCarpentry
    cd AuthorCarpentry
    . etc/setup-mac.bash
```

NOTE: notice the space after the period the last line. This is the only command where you need that idiom in Bash.

You should now be able run the *shorthand* command and the *./mk-website.bash* script should work.

---


## On going work

Once you have your repositories cloned on going authoring is a little easier. When you start
your Bash session you source the appropriate setup file and then you can get to work.

### Windows workflow

You need to let Bash know where to find *shorthand*. The easiest way is 

1. Start Bash
2. Change to your repository directory
3. Source the etc/setup-windows.bash file

Then you're in the repository directory in Bash do

```shell
    cd AuthorCarpentry
    . etc/setup-windows.bash
```

You should be ready to continue working.

### On a Mac

You need to let Bash know where to find *shorthand*. The easiest way is 

1. Start Terminal 
2. Change to your repository folder in Terminal 
    + e.g. `cd Sites/AuthorCarpentry` if that is where you put the repository
3. Source the etc/setup-windows.bash file

Then you're in the repository folder in Bash do

```shell
    cd AuthorCarpentry
    . etc/setup-macosx.bash
```

You should be ready to continue working.

---

## Workflow

1. Source your setup file (only do this once) to setup your Bash environment
2. Create, write and edit your content in Markdown files
3. For each level of the website you can customize the navigation links in *nav.md* as need
    + e.g. add additional links to pages or lessons
4. In the root of your repository directory run `./mk-website.sh` to re-generate all the HTML content from your markdown
5. Check the HTML versions and see if they are what you like
    + e.g. ws
6. repeat from 2 as needed
7. Commit your changes master
8. Push your changes to master
9. When you're ready to publish run the publish script
    + ./publish.bash


---

## How it works

The website is being generated using a tool call [shorthand](https://github.com/caltechlibrary/shorthand). It is a simple text label
expander that also has a built in Markdown processor (turns your Markdown into HTML). It is very friendly for use in Bash scripts.
We use Bash scripts (e.g. mk-website.sh) to apply *shorthand* to specific markdown files to render the desired pages.

Additional this repository comes with Windows and Mac OS X compiled versions of [ws](https://github.com/caltechlibrary/ws). This is
a light weight webserver suitable to use during website editing to see how your changes look in a web browser.


