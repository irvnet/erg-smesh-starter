#! /bin/sh

#run pandoc with reveal bits hosted on unpkg to simplify the working directory so reveal repo doesn't need to be downloaded
#`pandoc --standalone -t revealjs -V revealjs-url=https://unpkg.com/reveal.js -V theme=beige -o test.html test.md`
#- `--standalone` - allows distribution of a single html file as the slide deck
#- `-t revealjs` - identifies that pandoc should generate output using reveal.js html format
#- `-V revealjs-url=https://unpkg.com/reveal.js` - allows pandoc to leverage remotely hosted source for the conversion
#-  `-V theme=beige` - identifies theme to use (can create a blacksmiths template later)
#- `-o test.html test.md` - convert the named markdown file to the named html file

REVEAL_URL=https://unpkg.com/reveal.js
REVEAL_THEME=beige
INPUT_DIR=./md
OUTPUT_DIR=./html

for MARKDOWN_FILE in 01-intro.md 02-smesh-def.md 03-use-cases.md 04-smesh-arch.md 06-resources.md 07-next-steps.md
do
    HTML_SLIDES=$(echo "$MARKDOWN_FILE" | cut -f 1 -d '.').html
    echo "built $HTML_SLIDES"
    pandoc --standalone -t revealjs -V revealjs-url=$REVEAL_URL -V theme=$REVEAL_THEME -o $OUTPUT_DIR/$HTML_SLIDES $INPUT_DIR/$MARKDOWN_FILE 
done

