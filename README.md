# tag-parse
A simple bash script to copy tagged text from interview transcripts to a new file. Useful for the 'relevant text' step in qualitative data analysis (Auerbach & Silverstein, 2003).

### use
* create a table corresponding interviewee names to interview ids
* do a find-and-replace on all existing '@' or '~' symbols
* read the transcripts and enclose each section of relevant text in an @~ pair
* search the transcripts and make sure all tags are closed
* run the script

### structure
* relevant text in the transcript files is enclosed by tags
  * start tag: @
  * end tag: ~
* each interview is assigned a code
* all text inside of an @ ~ pair is copied into a new text file and has the interview ID appended to the start of the line
* command arguments: input filename, output filename, interview id
