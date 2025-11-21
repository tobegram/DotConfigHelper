#!/bin/bash

# Pfad zur Überprüfung
TARGET_DIR="$HOME/.config/sublime-text/Packages/User"

# Datei, die kopiert werden soll
KEYBINDING_FILE="Default (Linux).sublime-keymap"

# Verzeichnis der Vorlagen
TEMPLATE_DIR="../../templates"

# Überprüfen, ob das Verzeichnis existiert
if [ -d "$TARGET_DIR" ]; then
    echo "Das Verzeichnis $TARGET_DIR existiert."
else
    mkdir $TARGET_DIR
    echo "Das Verzeichnis $TARGET_DIR wurde angelegt."
fi

# Überprüfen der Datei
if [ -f "$TARGET_DIR/$KEYBINDING_FILE" ]; then
    
    cp "$TARGET_DIR/$KEYBINDING_FILE" "$TARGET_DIR/$KEYBINDING_FILE.bak"
    echo "Backup Datei angelgt."
else

    touch "$TARGET_DIR/$KEYBINDING_FILE"
    echo "$KEYBINDING_FILE datei angelegt (leer)"
fi

# Schreib bzw. Überschreibvorgang der Vorlage
cp "$TEMPLATE_DIR/$KEYBINDING_FILE" "$TARGET_DIR/$KEYBINDING_FILE"
echo "$KEYBINDING_FILE Vorlage erstellt/überschrieben."

