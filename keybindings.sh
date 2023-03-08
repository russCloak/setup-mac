DIR=~/Library/KeyBindings
FILE=$DIR/DefaultKeyBinding.dict


# Make keybindings folder if it doesn't exist
[ ! -d "$DIR" ] && mkdir $DIR

# Don't recrete the file if it already exists
[ -f $FILE ] && exit 1 

# Create the file
touch $FILE

# Add the content
cat << EOF >> $FILE
{
    "\UF729"  = moveToBeginningOfParagraph:; // home
    "\UF72B"  = moveToEndOfParagraph:; // end
    "$\UF729" = moveToBeginningOfParagraphAndModifySelection:; // shift-home
    "$\UF72B" = moveToEndOfParagraphAndModifySelection:; // shift-end
    "^\UF729" = moveToBeginningOfDocument:; // ctrl-home
    "^\UF72B" = moveToEndOfDocument:; // ctrl-end
    "^$\UF729" = moveToBeginningOfDocumentAndModifySelection:; // ctrl-shift-home
    "^$\UF72B" = moveToEndOfDocumentAndModifySelection:; // ctrl-shift-end
}
EOF