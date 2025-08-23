#!/bin/bash

# Display a menu with options using bemenu
choice=$(echo -e "Novel\nBook\nMaidenCorruption\nNurse\nManga\nHttpServer\nHatsukoi\nChome\nAquaBless\nSexEducation\nKyouKara\n1st" | bemenu \
    -b \
    --fn "JetBrainsMono Nerd Font" \
    --binding vim \
    --nb "#000000" --nf "#ffffff" \
    --tb "#000000" --tf "#ffffff" \
    --hb "#000000" --hf "#902DF3" \
    --ab "#000000" --af "#ffffff" \
    --sb "#000000" --sf "#ffffff" \
    --vim-esc-exits \
    --vim-normal-mode \
    -W 0.3 \
    -l 4 \
    -R 9 \
    --prompt "")

# Open the selected option in Firefox
case "$choice" in
    "Novel") 
        firefox --new-tab "file:///home/paul/Documents/Dark%20Mode%20Ver/An%20Archdemons%20Dilemma%20-%20How%20to%20Love%20Your%20Elf%20Bride%20-%20Volume%2007%20%E3%80%8EPremium%20Ver%E3%80%8F%20dark.pdf"
        ;;
    "Book") 
       firefox --new-tab ~/Documents/Let\'s\ Go\ \[Alex\ Edwards\].pdf  
        ;;
    "MaidenCorruption") 
        firefox --new-tab "https://hentaifox.com/gallery/138180/"
        ;;
    "Nurse") 
        firefox --new-tab "https://hentaifox.com/gallery/145030/"
        ;;
    "Manga") 
        firefox --new-tab "https://mangapark.net/title/45167-en-shurabara/383863-ch-003"
        ;;
    "HttpServer") 
        firefox --new-tab "https://app.codecrafters.io/courses/http-server/introduction"
        ;;
    "Hatsukoi") 
        firefox --new-tab "https://hentaifox.com/gallery/140470/"
        ;;
    "Chome") 
        firefox --new-tab "https://hentaifox.com/gallery/140467/"
        ;;
    "AquaBless") 
        firefox --new-tab "https://hentaifox.com/gallery/140544/"
        ;;
    "SexEducation") 
        firefox --new-tab "https://hentaifox.com/g/142424/1/"
        ;;
    "KyouKara") 
        firefox --new-tab "https://hentaifox.com/search/?q=Hitozuma+Mansion+ni+Nyuukyo+shimasu"
        ;;
    "1st") 
        firefox --new-tab "https://kemono.cr/patreon/user/11946658"
        ;;
    *) 
        exit 1 # Exit if no valid option is selected
        ;;
esac

