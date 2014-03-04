#!/bin/bash

if [[ -f "$EDITOR_PATH" && `head -c 3 "$EDITOR_PATH"` == $'\xef\xbb\xbf' ]]; then
	# file exists and has UTF-8 BOM
	mv "$EDITOR_PATH" "$EDITOR_PATH".bak
	tail -c +4 "$EDITOR_PATH".bak > "$EDITOR_PATH"
fi