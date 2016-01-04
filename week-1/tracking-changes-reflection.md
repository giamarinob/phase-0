#1.5 Tacking Changes

##How does tracking and adding changes make developers' lives easier?

Tracking and adding creates an additional layer between a working copy of a file
and the master copy in the repository. It allows by creating the commit it adds
an additional safety valve to allow you to make double sure that you want to 
send this update to the repository. 

##What is a commit?

A commit is a term used to describe changing a document in a version control 
system. A commit is a submission of a group of changes. It can be only one 
change or it can be multiple changes. The point is that it allows a user to 
pull a master document, make as many changes to a document as they see 
necessary, and push those changes back to the master document. The act of making 
those changes is referred to as the commit.

##What are the best practices for commit messages?

As referenced from Tim Pope's blog post "A Note About Git Commit Messages", he 
suggests that the best practices are to capitalize the first word, keep it to 50
characters or less, and use imperitive form instead of past tense.
Imperitive form is saying fix bug instead of fixed or fixes. 

##What does the HEAD^ argument mean?

HEAD^ is shorthand for HEAD^1. It would refer to the "parent of" the current HEAD 
which is a placeholder for the current commit. 

##What are the 3 stages of a git change and how do you move a file from one stage to the other?

The first stage is as a working copy or untracked document. When you checkout a
file and make modifications to it or create a file in a feature-branch the file
is in this first stage. The second stage is when the file(s) are in a commit.
Files are added into the commit index with `git add` and then committed with
`git commit`. Then the commit can be pushed to the master repository with `git push`.
Before the files are pushed you can use "git checkout" to grab the file
back from the commit if you decide you need to make more changes before sending
it to the repository.

##Write a handy cheatsheet of the commands you need to commit your changes?

*`git status`: This checks the status of the repository and lets the user know
 if anything is waiting to be committed.
*`git add`: This command adds files to the index to be committed.
*`git commit`: This commits the files to be sent to the master repo.
*`git push origin <branch-name>`: Pushes the commit to the origin repo.
*`git checkout`: Can either checkout a file to be edited or change branches.
*`git reset`: Unstages a commit so it can be modified.
  
##What is a pull request and how do you create and merge one?

From the github website, a pull request is an action that alerts someone in 
control of a document that someone would like to propose changes to that doc.
You can create a pull request through the terminal with get commands. You can
push a commit to the repository that stores the master copy of the file you're
editing. This will alert the user in control of that file that additions or 
changes are suggested to the doc. A pull request can also be initiated from 
the github website itself with the "Create Pull Request" button. Pull requests
are merged by the user in control of the document using terminal commands or 
github prompts.

##Why are pull requests preferred when working with teams?

Pull requests are preferred because they allow other people to look at the code
before it's merged. It is a way to give the code one more look before it is
added in case something was missed. 