#!/bin/bash
# This  script creates or oppens  a journal(makrdown) file with its name as the date in neovim in  a specified directory.
JOURNAL_DIR="$HOME/notes/journal"
nvim "${JOURNAL_DIR}/$(date +%d-%m-%y).md"
