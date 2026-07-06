#!/bin/bash

# Display a menu with options using bemenu
choice=$(echo -e "github
CV
Novel
JavTable
JavHDVideos
Book
MaidenCorruption
Artist: Tokiwa Midori
Manga
HttpServer
JavHDVideos
RegexOneLearnRegular
MFYD028IHadSexWithMy
GovernmentofWestBeng
FuckedIntoSubmission
HimegotoLipPage24Hen
WatchSeptemCharmMagi
WorldsEndHaremchapte
WatchMinervanoKenshi
JustamomentBrave
MUDR326NaokiYamamoto
KareshinoMenomaedeHa
WatchAnalSanctuary2H" | bemenu \
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

    "FuckedIntoSubmission")
        brave --profile-directory=Default --reuse-window --new-tab "https://hentaifox.com/gallery/159141/"
        ;;

    "HimegotoLipPage24Hen")
        brave --profile-directory=Default --reuse-window --new-tab "https://hentaifox.com/g/159192/24/"
        ;;

    "WatchSeptemCharmMagi")
        brave --profile-directory=Default --reuse-window --new-tab "https://hanime.tv/videos/hentai/septem-charm-magical-kanan-sp-dokidoki-summer-camp-1"
        ;;

    "WorldsEndHaremchapte")
        brave --profile-directory=Default --reuse-window --new-tab "https://mangafire.to/read/shuumatsu-no-haremm.yqkq0/en/chapter-1"
        ;;

    "WatchMinervanoKenshi")
        brave --profile-directory=Default --reuse-window --new-tab "https://hanime.tv/videos/hentai/minerva-no-kenshi-2"
        ;;

    "Artist: Tokiwa Midori")
        brave --profile-directory=Default --reuse-window --new-tab "https://hentaifox.com/artist/tokiwa-midori/"
        ;;

    "JustamomentBrave")
        brave --profile-directory=Default --reuse-window --new-tab "https://konachan.com/"
        ;;

    "MUDR326NaokiYamamoto")
        brave --profile-directory=Default --reuse-window --new-tab "https://en.jable.tv/videos/mudr-326/"
        ;;

    "KareshinoMenomaedeHa")
        brave --profile-directory=Default --reuse-window --new-tab "https://hentaifox.com/gallery/134479/"
        ;;

    "WatchAnalSanctuary2H")
        brave --profile-directory=Default --reuse-window --new-tab "https://hanime.tv/videos/hentai/anal-sanctuary-2"
        ;;

    *) 
        exit 1 # Exit if no valid option is selected
        ;;
esac

