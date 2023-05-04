## Via SVG

### Plain tree

```shell
FOLDER="xyz" # Will be the root folder in the tree
# -A Prints @ instead of NBSP (which html2svg cant handle)
# Note: tree -H would print as HTML. Clickable but not with bold folders
# Some errors in tree, no transparency, size too big
# tree v2.0.2
# If you want to modify the order, pipe tree to vipe (sudo apt-get install moreutils) 
unalias tree
# Images for bright mode:     sed 's|head>|head>\n<style>body {color: #777}</style>|' | \
LINE_COLOR=White # black or #777 in bright mode
tree -C -A --noreport --dirsfirst "$FOLDER" | \
    aha | \
    sed "s|head>|head>\n<style>body {color: $LINE_COLOR}</style>|" | \
    sed 's|color:blue|color:#23A3DD|' \
    > "$FOLDER.html"
docker run --rm -v$(pwd):/in fathyb/html2svg:1.0.0 "file:///in/$FOLDER.html" |\
  sed '/<rect fill="white".*/d' |\
  sed 's/@/\xC2\xA0/g' \
  > "$FOLDER.svg"
rm "$FOLDER.html"
# Replaces @ by ' '  or &nbsp; -> Avoids errors in tree created by htm2svg
# Removes huge <rect fill="white" width="1919" height="1079"/>
```

### Erdtree

Alternative: [Erdtree](https://github.com/solidiquis/erdtree ) - provides more color and icons. Tested with version 2.0

TODO render nerd fonts instead of replacing icons?
```shell
FOLDER="xyz"
LINE_COLOR=White # black or #777 in bright mode
# Replace all spaces with @ because html2svg seems not to be able these
# Include Twemoji to render emojis as SVGs
# Include Font-Awesome, so the FA glyphs are rendered as SVGs
# Add Git icon for root of the tree
erd --force-color --suppress-size --icons --dirs-first --inverted --sort=name --hidden "$FOLDER" | \
    head -n -1 | \
    aha | \
    sed '/\.gitkeep/d' | \
    sed 's|color:blue|color:#23A3DD|g' | \
    sed "s|color:purple|color:$LINE_COLOR|g" |
    sed -e '/<pre>/,/<\/pre>/ s/ /@/g' |\
    sed 's||⚙<fe0f>|g' |\
    sed 's||📁|g' |\
    sed 's||<i class="fas fa-unlock"></i>|g' |\
    sed 's||<i class="fas fa-file"></i>|g' |\
    sed 's||{}|g' |\
    sed 's|span@style|span style|g' | \
    sed 's/<\/title>/<\/title><script src="https:\/\/unpkg.com\/twemoji@latest\/dist\/twemoji.min.js" crossorigin="anonymous"><\/script>/g' | \
    sed 's/<body>/<style type="text\/css">img.emoji { height: 1em; width: 1em; margin: 0 .05em 0 .1em; vertical-align: -0.1em;}<\/style><body>/g' | \
    sed 's/<\/body>/<script src="https:\/\/cdnjs.cloudflare.com\/ajax\/libs\/font-awesome\/5.15.4\/js\/all.min.js"><\/script>\n<\/body><script>twemoji.parse(document.body, { folder: \x27svg\x27, ext: \x27.svg\x27 } )<\/script>/g' | \
    sed 's/<head>/<head><link rel="stylesheet" href="https:\/\/cdnjs.cloudflare.com\/ajax\/libs\/font-awesome\/5.15.4\/css\/all.min.css"\/>/g' | \
    sed '/<pre>/,/<\/pre>/ s/@<span style="font-weight:bold;color:#23A3DD;">📁/@<span style="font-weight:bold;color:#23A3DD;"><i class="fab fa-git-alt fa-lg"><\/i>/g' \
    > "$FOLDER.html"
docker run --rm -v$(pwd):/in fathyb/html2svg:1.0.0 "file:///in/$FOLDER.html" |\
  sed '/<rect fill="white".*/d' |\
  sed 's/@/\xC2\xA0/g' \
  > "$FOLDER.svg"
rm "$FOLDER.html"
```

Then:
* Set draw.io to appearance | dark (otherwise the white objects will be imported in red!? 🤷‍♂️)
* import into draw.io (tested with 20.8.16)  
  Remove svg width, adapt height empirically to be minimal before importing to draw.io
  (remove `content` and `deps)
* Move to x=0, y=0 
* Save as editable SVG
* Add `class="fragment"` `data-fragment-index=n` to make image appear gradually on the slide 
  * Start index at 2, so we can hide the diagram on slide enter
  * this might be easiest in inkscape.
  * Click on an object (or multiple, then group them)
  * Shift+Ctrl+X - opens XML-Editor
  * Add properties
  * Note: Saving is OK, but the next save in draw.io will remove properties from SVG
  * To format it a bit more compact ` svgo --pretty 1d.svg | xsel --clipboard`
  * **Is there an option to add classes to draw.io in a way that they are also rendered to the SVG?**
* Afterwards: Copy SVG to slide (so fragments are picked up by reveal.js)   
    remove height, set width to 100% (or more/less depending on the slide)

## Via HTML

Disadvantage: Text is `foreignObject` whose HTML attributes (e.g. text size) differ (inline SVG vs external SVG).
Inline SVG is changed by reveal's CSS. Then, shapes and text no longer match

```shell
FOLDER=xyz # Will be the root folder in the tree
tree -C --noreport $FOLDER| \
    aha | \
    sed 's|head>|head>\n<style>body {color: white}</style>|' | \
    sed 's|color:blue|color:#23A3DD|' \
    > $FOLDER.html
```
* Set draw.io to appearance | dark (otherwise the white objects will be imported in red!? 🤷‍♂️)
* import into draw.io (copy and paste HTML from browser is different (better?) than dragging file into draw.io)
* Move to x=0, y=0; Remove trailing linebreaks in tree text.
* Shrink size of tree text to be smaller than tree itself (otherwise alignment will look wrong)
* **export** as SVG, `Transparent Background` (saving as editable SVG will cause the white color to go black 🤷‍♂️)
* Afterwards: Copy SVG to slide (so fragments are picked up by reveal.js)
* Remove width and heigh in `<svg>`, depending on the size `class="floatRight" looks better
* Add `class="fragment" fragment-index=n` without doing too much formatting (the tree structure easily breaks)
* Is there an option to add classes to draw.io in a way that they are also rendered to the SVG?

## Transform to light colors

Tree structures: Recreate with `LINE_COLOR=White # black or #777 in bright mode` (see above)

On Slides: `(<text fill="#000")(?=.|\n*?)` - replace only the ones on white background with `<text fill="#fff"` 

Draw.io
```bash
for FILE in deployment-hub-and-spoke deployment-namespaced deployment-standalone; do
  drawio -x -f xml -o $FILE.drawio $FILE.svg
  sed -i 's/background="#[0-9a-fA-F]*"/background=""/' $FILE.drawio
  sed -i 's/strokeColor=#FFFFFF;/strokeColor=#777;/' $FILE.drawio
  drawio -x -f svg --embed-diagram -o $FILE.svg $FILE.drawio
  rm $FILE.drawio
done
```