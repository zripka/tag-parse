# tag-parse
A simple bash script to copy tagged text from interview transcripts to a new file, interview ID.

### structure
* relevant text in the transcript files is enclosed by tags
  * start tag: @@
  * end tag ~~
* each interview is assigned a code
* all text inside of an @@ ~~ pair is copied into a new text file and has the interview ID appended to the end of the line
* command arguments: input filename, output filename, interview id