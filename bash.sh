#!/bin/bash
# The first line of a script can tell your shell how to open it.  The line above tells the terminal
# to look in the directory /bin/ for the program `bash` and use it to run this script.

## INTRODUCTION
tput setaf 3
echo "Welcome to this interactive bash script.  Let's learn about the command line!"
tput sgr0
echo
read -p "At any time press Ctrl-C to stop the script.  Press any key for the instructions."

## INSTRUCTIONS
echo
echo "The script will introduce you to a few basic UNIX commands like this:"
read -p "> ls    (press enter to continue)"

ls     #  Comments like this can help you understand scripts better.

echo "The above command lists files in the current directory.  Now try pwd:"
read -p "> pwd"

pwd     # I chose to start with ls and pwd because they help you find out where you are in the file system.

echo "pwd stands for print working directory and lets you know where you are."
echo "After going through the script, you can type 'nano bash.sh' to view and edit the script."
echo
read -p "Press any key to get started..."

## EXAMPLE
echo "Let's learn how to use bash to manipulate basic text data files.
Enter a country name: (try typing France for instance)"

read COUNTRY    # read is how you prompt someone for input.  
                # UNIX variables are usually all caps by convention.  That's why its COUNTRY
                # You can use a dollar sign to see what a variable is or use it in a command:
                # > echo $COUNTRY   would print whatever the user entered.
                
                # read -p just makes the script pause until a key is pressed but not take input.

echo
printf "I've read in that text you entered and stored it in a variable called COUNTRY.  Now I can\n run a command with the contents of your variable:"
echo "Here's our command:"
tput setaf 2
read -p "> cat gapminderDataFiveYear.txt | grep $COUNTRY"
tput sgr0

cat gapminderDataFiveYear.txt | grep $COUNTRY       # I set the actual commands off a little so they
                                                    # are easy to see and find. Remember readability!

echo
echo "If '$COUNTRY' is a country name that is in the data set, you should see results here."
echo

read -p "Let's zoom in and see what happened..."

echo "  1: cat"
read -p "'cat' is a UNIX program that spits out all of the things you give it in a row..."
echo
echo "  2: |"
read -p "The '\|' symbol is called a 'pipe', and routes the output of the first command to the input\n of the next.  This allows you to chain powerful combinations of commands like the one above and beyond."
echo
echo "  3: grep"
read -p "grep is a powerful search program that can search for text in many different ways.  We've used it in its most basic form here."
echo 
echo 
echo

## HEAD, TAIL AND MORE PIPES
echo "Let's try another set of piped functions.  Say you wanted to take data points number 100-110 \n from our data file.  The UNIX commands 'head' and 'tail' can help here.  Let's see what they do:"
echo 
tput setaf 2                                    # tput is one of several ways to change text color
echo "Head is used like this:"
read -p " > head gapminderDataFiveYear.txt"
tput sgr0                                       # Here I change the text back to default.

head gapminderDataFiveYear.txt

echo
read -p "Press any key when you're ready."
echo "Tail is very similar but, as you can imagine, starts in reverse:"
tput setaf 2
read -p " > tail gapminderDataFiveYear.txt"
tput sgr0

tail gapminderDataFiveYear.txt

echo
read -p "But wait!  head and tail both take options that we can use to our advantage..."
echo
tput setaf 2
echo " > head -n 15 gapminderDataFiveYear.txt"
tput sgr0

head -n 15 gapminderDataFiveYear.txt

echo "This lets us select a specific number of items from the head or tail of a list."
echo
read -p "Can you think of how we might pipe these commands together to display rows 100-110?"
read -p "Ready to see the answer?"
echo "Here's how I would do it:"
tput setaf 2
read -p " > head -n 110 gapminderDataFiveYear.txt | tail -n 10"
tput sgr0

head -n 110 gapminderDataFiveYear.txt | tail -n 10

echo
read -p "That's about it!  Press any key for a summary and next steps"

## Summary
echo
echo 'Where to go from here?  Some suggestions: 
 - experiment with other common UNIX programs such as cd, more, cut, and others 
 - play around with cat, grep, head, tail and pipes to pull data out of gapminderDataFiveYear.txt 
 - look at the script source.  There are many ways to do this; try nano or cat piped to less.'
