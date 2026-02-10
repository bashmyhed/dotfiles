#!/bin/bash

# Display a menu with options using bemenu
choice=$(echo -e "gemini\ngithub\nClaudeAI\nCV\nNovel\nBook\nMaidenCorruption\nManga\nHttpServer\nHatsukoi\nChome\nAquaBless\nSexEducation\nKyouKara\n1st
RegexOneLearnRegular" | bemenu \
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
        "gemini") 
        brave --profile-directory="Default" --reuse-window --new-tab "https://gemini.google.com/u/0/"
        ;;
    "github") 
        brave --profile-directory="Default" --reuse-window --new-tab "https://github.com/bashmyhed"
        ;;
    "ClaudeAI") 
        brave --profile-directory="Default" --reuse-window --new-tab "https://claude.ai/"
        ;;
    "CV") 
        brave --profile-directory="Default" --reuse-window --new-tab "https://anigo.to/watch/black-butler-n431#ep=4"
        ;;
    "Novel") 
        brave --profile-directory="Default" --reuse-window --new-tab "file:///home/paul/Documents/Dark%20Mode%20Ver/An%20Archdemons%20Dilemma%20-%20How%20to%20Love%20Your%20Elf%20Bride%20-%20Volume%2007%20%E3%80%8EPremium%20Ver%E3%80%8F%20dark.pdf"
        ;;
    "Book") 
       brave --profile-directory="Default" --reuse-window --new-tab ~/Documents/Let\'s\ Go\ \[Alex\ Edwards\].pdf  
        ;;
    "MaidenCorruption") 
        brave --profile-directory="Default" --reuse-window --new-tab "https://hentaifox.com/gallery/138180/"
        ;;
    "Manga") 
        brave --profile-directory="Default" --reuse-window --new-tab "https://mangapark.net/title/45167-en-shurabara/383863-ch-003"
        ;;
    "HttpServer") 
        brave --profile-directory="Default" --reuse-window --new-tab "https://app.codecrafters.io/courses/http-server/introduction"
        ;;
    "Hatsukoi") 
        brave --profile-directory="Default" --reuse-window --new-tab "https://hentaifox.com/gallery/140470/"
        ;;
    "Chome") 
        brave --profile-directory="Default" --reuse-window --new-tab "https://hentaifox.com/gallery/140467/"
        ;;
    "AquaBless") 
        brave --profile-directory="Default" --reuse-window --new-tab "https://hentaifox.com/gallery/140544/"
        ;;
    "SexEducation") 
        brave --profile-directory="Default" --reuse-window --new-tab "https://hentaifox.com/g/142424/1/"
        ;;
    "KyouKara") 
        brave --profile-directory="Default" --reuse-window --new-tab "https://hentaifox.com/search/?q=Hitozuma+Mansion+ni+Nyuukyo+shimasu"
        ;;
    "1st") 
        brave --profile-directory="Default" --reuse-window --new-tab "https://kemono.cr/patreon/user/11946658"
        ;;
    "RegexOneLearnRegular")
        brave --profile-directory="Default" --reuse-window --new-tab "https://regexone.com/"
        ;;

    *) 
        exit 1 # Exit if no valid option is selected
        ;;
esac

