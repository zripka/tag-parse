#! /bin/bash

# if no command args are entered, print command line arg information to the terminal
if [ $# -eq 0 ]
then
  echo "Command line arguments: input filename, output filename, interview id"
  exit 0
fi

# search the text file for text enclosed by @@ and ~~ tags, add the interview id to each tagged section, strip @ and ~ characters, and write to new text file
grep -Eo '@[^~]*~' $1 | sed -e "s/^/$3 /" | sed -E 's/@//' | sed -E 's/~//'>> $2

# exit the script
exit 0