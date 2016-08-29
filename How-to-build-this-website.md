

# How to build this website

These are instructions for generate [caltechlibrary.github.io/AuthorCarpentry](https://caltechlibrary.github.io/AuthorCarpentry) website.
This includes content in the [CODATA-RDA](CODATA-RDA/) folder.

## One time setup

### Prerequisites

You need a (free) [GitHub] (http://github.com) account and software.  For Windows, download [Git for Windows] (https://git-for-windows.github.io). Mac user can download [GitHub Desktop] (https://desktop.github.com) and select "Install Command Line Tools" under Preferences/Advanced or using a repository like macports.  

This website is built using several command line tools developed at Caltech. They are

+ [mkpage](https://caltechlibrary.github.io/mkpage) - renders the website from Markdown files using template page.tmpl
    + [installation instructions](https://caltechlibrary.github.io/mkpage/install.html)

Installation instructions are available for Mac OS X, Windows 10, Ubuntu/Linux and Raspbian/Linux operating systems.

### Fork the repository

Go to the repository [GitHub page] (https://github.com/caltechlibrary/AuthorCarpentry) and click to fork button in the upper right corner.  This will create a copy of the repository in your personal account.  You can now feel free to make any changes and they won't impact the main copy.

## Working on the repository

+ Start Bash (On Windows go to Start, Git, Git Bash.  On Mac or Linux go to the Terminal application (installed with OS))
+ Clone this repository

```shell
    git clone https://github.com/*your_github_username*/AuthorCarpentry
```

+ Change to the repository directory

```shell
    cd AuthorCarpentry
```
+ and you're ready to work - start in next section

## On going work

Once you have your repositories cloned on going authoring is a little easier. 

+ edit markdown (.md) files in a text editor
+ run  `./mk-website.bash`.  This will generate .html files
You can check the .html files by doing a "file open" from your web browser on the individual HTML files
+ run `./publish.bash`.  You might have to enter your github password or confirm a merge.  Typing the following should work in most cases.

```shell
    :wq
```

This copies updates the contents of the *gh-pages* branch based on the current *master* branch.
+ You can put .md files into directories and `mk-website.bash` will find them.  

View your new web site at https://*your_github_username*.github.io/AuthorCarpentry/ 

## Updating with new changes from the library

When the library makes changes to the repository, you may want to update your personal copy.  Go to https://github.com/*your_github_username*/AuthorCarpentry and click "New Pull Request".  Then select the "compare across forks" link in the upper left.  You'll want to set the base fork as *your_github_username*/AuthorCarpentry (what we're updating) and the head fork as caltechlibrary/AuthorCarpentry (where we're getting the changes from).  Click "Create pull request" add some description about merting and click "Create pull request" again.  Then you'll have to accept the pull request by clicking the green button.  The only place you'll run into problems is if files are in conflict between the two versions-in this case you'll have to manually inspect and resolve the confilict.

To update the copy on your local machine, type in your local terminal in the AuthorCarpentry directory

```shell
    git pull origin master
```

## Don't have an internet connection or want to view your changes privately?

You can use Robert's simple web server ws.  Follow the installation instructions below.

+ [ws](https://caltechlibrary.github.io/ws) - (optional) is a static web server you can use to view your site while you're writing it
    + [installation instructions](https://caltechlibrary.github.io/ws/install.html)

## Sharing your changes with the world

If you want to include your changes in the main AuthorCarpentry repository from https://github.com/caltechlibrary/AuthorCarpentry, you can submit a pull request.  Go to your personal github page https://github.com/*your_github_username*/AuthorCarpentry and click the "New Pull Request" button.  You're requesting the changes to be put into in the base branch (the place you want the changes applied - in this case caltechlibrary) from the compare head branch (where the changes are - your personal repository).  You'll see all the changed files in the boxes below.  Write a title and description of the changes and click "Submit Pull Request".  This request will be recorded and a library staff member can authorize the changes.

---

## Summary workflow steps

1. Create, write and edit your content in Markdown files
2. For each level of the website you can customize the navigation links in *nav.md* as need
    + e.g. add additional links to pages or lessons
3. In the root of your repository directory run `./mk-website.bash` to re-generate all the HTML content from your markdown
4. Check the HTML versions and see if they are what you like
    + e.g. ws
5. repeat from 2 as needed
6. Commit your changes master
7. Push your changes to master
8. When you're ready to publish run the publish script
    + ./publish.bash

## How it works

The website is being generated using a tool call [mkpage](https://caltechlibrary.github.io/mkpage). It renders plain text, Markdown and JSON using a simple template engine developed at Google.  Typical you need very few templates to build a website (this site needed only one). Layout is controlled from CSS as well as the markup in your template. *mkpage* is very friendly to Bash scripts and `./mk-website.bash` is a good example of using a *mkpage* and common Unix command in a simple Bash script to render a multi-directory website.

When you commit and push your changes to Github's gh-pages branch then your website hosted at Github updates. This lets you iterate easily working on the website without disruption to the public. When everything checks out the way you want, push your changes to the *master* branch, pull *master* into the *gh-pages* branch and push those up to Github's *gh-pages* branch. There is an easy to use script call `./publish.bash` so you don't have to remember those details.

