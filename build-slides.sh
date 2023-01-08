#! /bin/sh

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

