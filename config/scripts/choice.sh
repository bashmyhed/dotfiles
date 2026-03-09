#!/bin/bash

# Display a menu with options using bemenu
choice=$(echo -e "github\nCV\nNovel\nJavTable\nJavHDVideos\nBook\nMaidenCorruption\nManga\nHttpServer
JavHDVideos
RegexOneLearnRegular
SeikousaiSchoolLoveF
MFYD028IHadSexWithMy
GovernmentofWestBeng"| bemenu \
    -b \
    -R 4 \
    -w \
    -B 1 \
    -R 4 \
    --fn "JetBrainsMono Nerd Font" \
    --binding vim \
    --nb "#181825d9" --nf "#ffffff" \
    --tb "#181825d9" --tf "#ffffff" \
    --hb "#181825d9" --hf "#89b4fa" \
    --ab "#181825d9" --af "#ffffff" \
    --sb "#181825d9" --sf "#ffffff" \
    --cb "#181825d9" --cf "#ffffff" \
    --fb "#181825d9" --ff "#ffffff" \
    --bdr "#263238FF" \
    --vim-esc-exits \
    --vim-normal-mode \
    -W 0.3 \
    -l 4 \
    -R 9 \
    --prompt "")

# Open the selected option in Firefox
case "$choice" in
    "github") 
        brave --profile-directory="Default" --reuse-window --new-tab "https://github.com/bashmyhed"
        ;;
    "CV") 
        brave --profile-directory="Default" --reuse-window --new-tab "https://anigo.to/watch/black-butler-n431#ep=4"
        ;;
    "Novel") 
        sioyek ~/Documents/Dark\ Mode\ Ver/An\ Archdemons\ Dilemma\ -\ How\ to\ Love\ Your\ Elf\ Bride\ -\ Volume\ 07\ 『Premium\ Ver』\ dark.pdf

 
        # brave --profile-directory="Default" --reuse-window --new-tab "file:///home/paul/Documents/Dark%20Mode%20Ver/An%20Archdemons%20Dilemma%20-%20How%20to%20Love%20Your%20Elf%20Bride%20-%20Volume%2007%20%E3%80%8EPremium%20Ver%E3%80%8F%20dark.pdf"
        ;;
    "Book") 
       # brave --profile-directory="Default" --reuse-window --new-tab ~/Documents/Let\'s\ Go\ \[Alex\ Edwards\].pdf  
       sioyek ~/Documents/Let\'s\ Go\ [Alex\ Edwards].pdf
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
    "RegexOneLearnRegular")
        brave --profile-directory="Default" --reuse-window --new-tab "https://regexone.com/"
        ;;

    "SeikousaiSchoolLoveF")
        brave --profile-directory="Default" --reuse-window --new-tab "https://hentaifox.com/gallery/157571/"
        ;;
    "JavTable")
        brave --profile-directory=Default --reuse-window --new-tab "https://en.jable.tv/"
        ;;

    "MFYD028IHadSexWithMy")
        brave --profile-directory=Default --reuse-window --new-tab "https://en.jable.tv/videos/MFYD-028/"
        ;;

    "GovernmentofWestBeng")
        brave --profile-directory=Default --reuse-window --new-tab "https://apas.wb.gov.in/#"
        ;;

    "JavHDVideos")
        brave --profile-directory=Default --reuse-window --new-tab "https://www4.javhdporn.net/"
        ;;

    *) 
        exit 1 # Exit if no valid option is selected
        ;;
esac

