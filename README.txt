eSTKai is open source software, here's how to use it:

First, run the batch file: estkai-setup

It will ask you for an "addons repo". Type in the path to install addons from.

WARNING:
Do not execute eSTKai setup after setting up. It won't work.

From there, use the estkai batch file.

Syntax of command:

estkai [karts/tracks] [package name]

When you execute the following command, estkai will install the package name from the repo that you listed.

Result:

Installing package [package name] from [repo]...

Removing packages:

Syntax:

estkai-remove [karts/tracks] [package name]

Searching for packages:

estkai-search  [karts/tracks]

Make your own repo!

How to:

Step one: make a new directory called "repo"

Directory structure:
      KART STUFF
           |
         test
           |
       test.zip
           |
tracks   karts
   |       |
   |_______|              test.zip
       |                     |
       |                     |
     repo               estkai-files

test.zip  test
 |__________|
     |
   karts  tracks
     |       |
     |_______|
         |
         |
       addons

Now, set the repo using estkai-config.txt (see config location at FAQ.txt)


Made by Buggem & DARKNESS
