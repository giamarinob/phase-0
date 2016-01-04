#1.1 Think About Time

I clicked through just about all the various links that were available. The ones
that really caught my interest were the ones talking about breaking down tasks 
into smaller and smaller increments to increase productivity. The "create a 
habit", "tiny habits", "make it big by starting small", and the pomodoro 
technique are ones that I looked into further. The idea behind all of them is 
ideas and ways to break down large tasks into smaller and smaller, more easily 
manageable ones. The create a habit introdcues a small reward for the completion
of a small task until, ideally, the task becomes a habit that is completed 
without the administration of reward. Tiny habits utilizes already existing 
small habits as a foundation for new small habits. Eventually, the accumulation 
of small habits results in large changes. 

Time boxing is the practice of using finite amounts of time to work on a task 
and then a short period of reflection on how the time went. You reflect on 
whether or not you were able to solve the problem in the given amount of time. 
If not, how much could you get finished and what you got caught up on, etc. We 
can use this in phase 0 and in fact already do. The guided pairing sessions 
appear to utilize exactly this technique. The GPS lasts for a specific amount of 
time at which time reflection is done to evaluate how the session went in the 
form of feedback.

I currently utilize checklists to manage time and plan the day. They work well 
enough, but I will fall into the trap sometimes of being overwhelmed by the 
"big picture" and procrastinating.

I will be employing the tiny habits and create a habit techniques. In fact, in 
the completion of this particular challenge i tried these techniques to try and 
get a feel for how they can increase focus and motivation, and, ultimately, 
productivity. 

The overall plan for phase 0 is to create habits to become as productive as 
possible for the challenge of the onsite portion of DBC. The workload is not 
overwhelming in phase 0, so the plan for me is to experiment with some of these 
techniques listed here and find what really works best for me that way I can 
utilize these techniques when the heavy workloads of the onsite phases occur. 

#1.2 The Command Line

A shell is a user interface to access the operating system. It can come in the 
form of a CLI or a GUI. A bash is a type of shell. It is a command language 
interpreter that can be used to access the operating system as a command line 
interface. 

The most challenging thing for me is simply keeping track of the wealth of 
information that is being presented. Having never really used command line 
before it is a lot to keep track of. It isn't only the commands to know, but 
many commands have multiple -char modifiers to augment, in some way, exactly 
how the command is executed. It will take multiple times through the first two 
releases and cheat sheets to unlock the full potential of the command line. All 
of the source material provided has been categorized and bookmarked for future 
reference when necessary.

With the previous response in mind I was able to get through the basic material. 
I have a good understanding of the basic commands available to me, what they do 
and how they work. As mentioned previously, it will take some time before I have 
a complete understanding of how everything works, but I am able to easily move 
around in directories and use commands to paint a picture in my head of where I 
am and the best way to get to where I need to be.

The most important commands for me as a new user are the commands dealing with 
keeping track of where you are in the directories. When you've grown accustomed 
to having the GUI to see where you are and having that taken from you, it takes 
some practice to build that visual in your head using the CLI and directory 
commands. 

pwd: Stands for print working directory. It prints the path from the home 
directory to the current directory.

ls: Stands for list directory. The command lists all files and directories 
within the current directory.

mv: Stands for move file/directory. The command allows you to move 
files/directories to new locations as well as rename files and directories.

cd: stands for change directory. The command will change the directory to the 
named directory. If no directory is given the default action is to return the 
user to the home directory. 

../: This is shorthand notation to refer to the parent directory of the current 
directory. For example if your current path was home/temp/something/anything 
then ../ would refer to the "something" directory.

touch: According to the manual this command changes file timestamps. It updates 
the access and modification timestamps of a given file. However, it can also be 
used to create an empty file when it is passed a filename that it cannot find. 
This was the primary use of it in release 1. 

mkdir: Stands for make directory. This command creates a directory if it does 
not already exist. 

less: This command allows the user to view and page through text one screen at 
a time. 

rmdir: Stands for remove directory. Unmodified it can only remove empty 
directories. The command requires additional instructions to proceed with the 
removal of non-empty directories. 

rm: Stands for remove file/directory. This command will delete a given file or 
directory.

help: This command brings up a list of shell commands. 

#1.4 Forking and Cloning

The first step before you do anything with repos is to make sure you're signed 
into your github account. 

Given that, to create a new repo you will go to the upper right hand corner of 
the browser window and click on the + sign. This will bring a pull down menu 
where you will select "new repository". You will then name the new repo and 
select options and preferences for the new repo. When you are ready to create 
the new repo you click the "Create Repository" button at the bottom of the 
screen. 

To fork a repo you must first find a repo you want to fork. You will then look 
for the fork icon in the upper right hand side of the window below the create 
new + sign in the last example. The button will say fork on it. Click that 
button and a window will pop up and ask you to what repo do you want to fork 
to? Select the repo of your choice and github will fork the repo to the repo of 
your choice. 

To clone a repo you must first navigate to the repo you want to clone. You must 
then find the url box on the page. The location of the box may change depending 
on what web browser you're using. Once you find it, highlight the url in the 
box. Make note whether you're grabbing an HTTPS link or SSH. If it is an SSH 
link then you will need to provide a username and password when attempting to 
clone the repo. You will then move to your terminal and navigate to the 
directory that you want to place the clone in. You will then use the "git clone" 
command by typing git clone url. You have now cloned the repo to that location.

The reason to fork a repo instead of starting new is one of efficiency. It is 
far more efficient and practical to use existing projects as starting points 
for your own project if you know you'll need a lot of similar code. If you come 
across a bug or something of that nature it is quick and efficient to fork and 
clone the repo and fix the bug yourself and initiate a pull request if you 
think the bug is easy to fix. If you are collaborating you can fork a repo and 
work on it yourself and initiate a pull request to add your code to the project. 

I learned about creating, forking, and cloning repositories. It was not a very 
difficult concept to grasp and the tools we use to do this have interfaces that 
are easy to use and locate the proper buttons to do what you want. The only 
problem I had was trying to delete a cloned repository from the terminal. I 
kept getting a non-empty directory error even though ls did not reveal anything 
in the directory. The only way I was able to delete the directory was to delete 
it in the file tree. I will continue to look through the terminal commands to 
try and find a way to complete this task in the terminal itself. 