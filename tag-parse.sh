#! /bin/bash
# run with sh tag-parse.sh C:/Users/zripk/google-drive-local/school/mcgill-university/honours-thesis/data/coding/raw-text/c-raw-text.txt C:/Users/zripk/google-drive-local/school/mcgill-university/honours-thesis/data/coding/relevant-text/c-relevant-text.txt '[Participant C]'
# if no command args are entered, print command line arg information to the terminal
if [ $# -lt 3 ]
then
  echo "Command line arguments: input filename, output filename, interview id"
  exit 0
fi

read -p "Enter participant alias: " alias
read -p "Enter today's date (YY-MM-DD): " date

# append information into header
echo "Undergraduate thesis

'Relevant Text' stage of qualitative data analysis (Auerbach & Silverstein 2003)
Zach Ripka
Participant $alias
date: $date

" >> $2

# search the text file for text enclosed by @@ and ~~ tags, add the interview id to each tagged section, strip @ and ~ characters, and write to new text file
echo $(cat $1) | grep -Eo '@[^~]*~' | sed -e "s/^/$3 /" | sed '/$/ G' | sed -E 's/@//' | sed -E 's/~//' >> $2

# exit the script
exit 0