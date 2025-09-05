#!/bin/bash

# Custom emoji picker using bemenu with your styling
# Save as ~/bin/emoji-picker or wherever you keep scripts
# Usage: 
#   emoji-picker     - copies emoji to clipboard
#   emoji-picker -t  - types emoji using wtype

# Your beautiful bemenu styling
# BEMENU_OPTS=" -l 8
# -W 0.4
# -c
# --fn JetBrainsMono Nerd Font
# --binding vim
# --nb #000000
# --nf #ffffff
# --tb #000000
# --tf #ffffff
# --hb #000000
# --hf #902DF3
# --ab #000000
# --af #ffffff
# --sb #000000
# --sf #ffffff
# --vim-esc-exits
# --prompt 🎨
# "
BEMENU_OPTS="
    -b \
    --fn JetBrainsMono Nerd Font
    --binding vim
    -R 9
    --nb #000000 
    --nf #ffffff
    --tb #000000 
    --tf #ffffff
    --hb #000000 
    --hf #902DF3
    --ab #000000 
    --af #ffffff
    --sb #000000
    --sf #ffffff
    --vim-esc-exits
    # --vim-normal-mode
    -W 0.3
    -l 4
    --prompt ✴️ 
"


# Emoji database - add more as needed
EMOJIS="
😀 grinning face
😃 grinning face with big eyes
😄 grinning face with smiling eyes
😁 beaming face with smiling eyes
😆 grinning squinting face
😅 grinning face with sweat
🤣 rolling on the floor laughing
😂 face with tears of joy
🙂 slightly smiling face
🙃 upside down face
🫠 melting face
😉 winking face
😊 smiling face with smiling eyes
😇 smiling face with halo
🥰 smiling face with hearts
😍 smiling face with heart eyes
🤩 star struck
😘 face blowing a kiss
😗 kissing face
☺️ smiling face
😚 kissing face with closed eyes
😙 kissing face with smiling eyes
🥲 smiling face with tear
😋 face savoring food
😛 face with tongue
😜 winking face with tongue
🤪 zany face
😝 squinting face with tongue
🤑 money mouth face
🤗 hugging face
🤭 face with hand over mouth
🫢 face with open eyes and hand over mouth
🫣 face with peeking eye
🤫 shushing face
🤔 thinking face
🫡 saluting face
🤐 zipper mouth face
🤨 face with raised eyebrow
😐 neutral face
😑 expressionless face
😶 face without mouth
🫥 dotted line face
😶‍🌫️ face in clouds
😏 smirking face
😒 unamused face
🙄 face with rolling eyes
😬 grimacing face
😮‍💨 face exhaling
🤥 lying face
🫨 shaking face
😌 relieved face
😔 pensive face
😪 sleepy face
🤤 drooling face
😴 sleeping face
😷 face with medical mask
🤒 face with thermometer
🤕 face with head bandage
🤢 nauseated face
🤮 face vomiting
🤧 sneezing face
🥵 hot face
🥶 cold face
🥴 woozy face
😵 dizzy face
😵‍💫 face with spiral eyes
🤯 exploding head
🤠 cowboy hat face
🥳 partying face
🥸 disguised face
😎 smiling face with sunglasses
🤓 nerd face
🧐 face with monocle
😕 confused face
🫤 face with diagonal mouth
😟 worried face
🙁 slightly frowning face
☹️ frowning face
😮 face with open mouth
😯 hushed face
😲 astonished face
😳 flushed face
🥺 pleading face
🥹 face holding back tears
😦 frowning face with open mouth
😧 anguished face
😨 fearful face
😰 anxious face with sweat
😥 sad but relieved face
😢 crying face
😭 loudly crying face
😱 face screaming in fear
😖 confounded face
😣 persevering face
😞 disappointed face
😓 downcast face with sweat
😩 weary face
😫 tired face
🥱 yawning face
😤 face with steam from nose
😡 pouting face
😠 angry face
🤬 face with symbols on mouth
😈 smiling face with horns
👿 angry face with horns
💀 skull
☠️ skull and crossbones
💩 pile of poo
🤡 clown face
👹 ogre
👺 goblin
👻 ghost
👽 alien
👾 alien monster
🤖 robot
😺 grinning cat
😸 grinning cat with smiling eyes
😹 cat with tears of joy
😻 smiling cat with heart eyes
😼 cat with wry smile
😽 kissing cat
🙀 weary cat
😿 crying cat
😾 pouting cat
🙈 see no evil monkey
🙉 hear no evil monkey
🙊 speak no evil monkey
💋 kiss mark
💌 love letter
💘 heart with arrow
💝 heart with ribbon
💖 sparkling heart
💗 growing heart
💓 beating heart
💞 revolving hearts
💕 two hearts
💟 heart decoration
❣️ heavy heart exclamation
💔 broken heart
❤️‍🔥 heart on fire
❤️‍🩹 mending heart
❤️ red heart
🩷 pink heart
🧡 orange heart
💛 yellow heart
💚 green heart
💙 blue heart
🩵 light blue heart
💜 purple heart
🤍 white heart
🩶 grey heart
🖤 black heart
🤎 brown heart
💯 hundred points symbol
💢 anger symbol
💥 collision
💫 dizzy
💦 sweat droplets
💨 dashing away
🕳️ hole
💣 bomb
💬 speech balloon
👁️‍🗨️ eye in speech bubble
🗨️ left speech bubble
🗯️ right anger bubble
💭 thought balloon
💤 zzz
👋 waving hand
🤚 raised back of hand
🖐️ hand with fingers splayed
✋ raised hand
🖖 vulcan salute
🫱 rightwards hand
🫲 leftwards hand
🫳 palm down hand
🫴 palm up hand
🫷 leftwards pushing hand
🫸 rightwards pushing hand
👌 ok hand
🤌 pinched fingers
🤏 pinching hand
✌️ victory hand
🤞 crossed fingers
🫰 hand with index finger and thumb crossed
🤟 love you gesture
🤘 sign of the horns
🤙 call me hand
👈 backhand index pointing left
👉 backhand index pointing right
👆 backhand index pointing up
🖕 middle finger
👇 backhand index pointing down
☝️ index pointing up
🫵 index pointing at the viewer
👍 thumbs up
👎 thumbs down
✊ raised fist
👊 oncoming fist
🤛 left facing fist
🤜 right facing fist
👏 clapping hands
🙌 raising hands
🫶 heart hands
👐 open hands
🤲 palms up together
🤝 handshake
🙏 folded hands
✍️ writing hand
💅 nail polish
🤳 selfie
💪 flexed biceps
🦾 mechanical arm
🦿 mechanical leg
🦵 leg
🦶 foot
👂 ear
🦻 ear with hearing aid
👃 nose
🧠 brain
🫀 anatomical heart
🫁 lungs
🦷 tooth
🦴 bone
👀 eyes
👁️ eye
👅 tongue
👄 mouth
🫦 biting lip
👶 baby
🧒 child
👦 boy
👧 girl
🧑 person
👱 person blond hair
👨 man
🧔 man beard
🧔‍♂️ man beard
🧔‍♀️ woman beard
👨‍🦰 man red hair
👨‍🦱 man curly hair
👨‍🦳 man white hair
👨‍🦲 man bald
👩 woman
👩‍🦰 woman red hair
🧑‍🦰 person red hair
👩‍🦱 woman curly hair
🧑‍🦱 person curly hair
👩‍🦳 woman white hair
🧑‍🦳 person white hair
👩‍🦲 woman bald
🧑‍🦲 person bald
👱‍♀️ woman blond hair
👱‍♂️ man blond hair
🧓 older person
👴 old man
👵 old woman
🙍 person frowning
🙍‍♂️ man frowning
🙍‍♀️ woman frowning
🙎 person pouting
🙎‍♂️ man pouting
🙎‍♀️ woman pouting
🙅 person gesturing no
🙅‍♂️ man gesturing no
🙅‍♀️ woman gesturing no
🙆 person gesturing ok
🙆‍♂️ man gesturing ok
🙆‍♀️ woman gesturing ok
💁 person tipping hand
💁‍♂️ man tipping hand
💁‍♀️ woman tipping hand
🙋 person raising hand
🙋‍♂️ man raising hand
🙋‍♀️ woman raising hand
🧏 deaf person
🧏‍♂️ deaf man
🧏‍♀️ deaf woman
🙇 person bowing
🙇‍♂️ man bowing
🙇‍♀️ woman bowing
🤦 person facepalming
🤦‍♂️ man facepalming
🤦‍♀️ woman facepalming
🤷 person shrugging
🤷‍♂️ man shrugging
🤷‍♀️ woman shrugging
🧑‍⚕️ health worker
👨‍⚕️ man health worker
👩‍⚕️ woman health worker
🧑‍🎓 student
👨‍🎓 man student
👩‍🎓 woman student
🧑‍🏫 teacher
👨‍🏫 man teacher
👩‍🏫 woman teacher
🧑‍⚖️ judge
👨‍⚖️ man judge
👩‍⚖️ woman judge
🧑‍🌾 farmer
👨‍🌾 man farmer
👩‍🌾 woman farmer
🧑‍🍳 cook
👨‍🍳 man cook
👩‍🍳 woman cook
🧑‍🔧 mechanic
👨‍🔧 man mechanic
👩‍🔧 woman mechanic
🧑‍🏭 factory worker
👨‍🏭 man factory worker
👩‍🏭 woman factory worker
🧑‍💼 office worker
👨‍💼 man office worker
👩‍💼 woman office worker
🧑‍🔬 scientist
👨‍🔬 man scientist
👩‍🔬 woman scientist
🧑‍💻 technologist
👨‍💻 man technologist
👩‍💻 woman technologist
🧑‍🎤 singer
👨‍🎤 man singer
👩‍🎤 woman singer
🧑‍🎨 artist
👨‍🎨 man artist
👩‍🎨 woman artist
🧑‍✈️ pilot
👨‍✈️ man pilot
👩‍✈️ woman pilot
🧑‍🚀 astronaut
👨‍🚀 man astronaut
👩‍🚀 woman astronaut
🧑‍🚒 firefighter
👨‍🚒 man firefighter
👩‍🚒 woman firefighter
👮 police officer
👮‍♂️ man police officer
👮‍♀️ woman police officer
🕵️ detective
🕵️‍♂️ man detective
🕵️‍♀️ woman detective
💂 guard
💂‍♂️ man guard
💂‍♀️ woman guard
🥷 ninja
👷 construction worker
👷‍♂️ man construction worker
👷‍♀️ woman construction worker
🫅 person with crown
🤴 prince
👸 princess
👳 person wearing turban
👳‍♂️ man wearing turban
👳‍♀️ woman wearing turban
👲 person with skullcap
🧕 woman with headscarf
🤵 person in tuxedo
🤵‍♂️ man in tuxedo
🤵‍♀️ woman in tuxedo
👰 person with veil
👰‍♂️ man with veil
👰‍♀️ woman with veil
🤱 breast feeding
👩‍🍼 woman feeding baby
👨‍🍼 man feeding baby
🧑‍🍼 person feeding baby
👼 baby angel
🎅 santa claus
🤶 mrs claus
🧑‍🎄 mx claus
🦸 superhero
🦸‍♂️ man superhero
🦸‍♀️ woman superhero
🦹 supervillain
🦹‍♂️ man supervillain
🦹‍♀️ woman supervillain
🧙 mage
🧙‍♂️ man mage
🧙‍♀️ woman mage
🧚 fairy
🧚‍♂️ man fairy
🧚‍♀️ woman fairy
🧛 vampire
🧛‍♂️ man vampire
🧛‍♀️ woman vampire
🧜 merperson
🧜‍♂️ merman
🧜‍♀️ mermaid
🧝 elf
🧝‍♂️ man elf
🧝‍♀️ woman elf
🧞 genie
🧞‍♂️ man genie
🧞‍♀️ woman genie
🧟 zombie
🧟‍♂️ man zombie
🧟‍♀️ woman zombie
🧌 troll
💆 person getting massage
💆‍♂️ man getting massage
💆‍♀️ woman getting massage
💇 person getting haircut
💇‍♂️ man getting haircut
💇‍♀️ woman getting haircut
🚶 person walking
🚶‍♂️ man walking
🚶‍♀️ woman walking
🧍 person standing
🧍‍♂️ man standing
🧍‍♀️ woman standing
🧎 person kneeling
🧎‍♂️ man kneeling
🧎‍♀️ woman kneeling
🧑‍🦯 person with white cane
👨‍🦯 man with white cane
👩‍🦯 woman with white cane
🧑‍🦼 person in motorized wheelchair
👨‍🦼 man in motorized wheelchair
👩‍🦼 woman in motorized wheelchair
🧑‍🦽 person in manual wheelchair
👨‍🦽 man in manual wheelchair
👩‍🦽 woman in manual wheelchair
🏃 person running
🏃‍♂️ man running
🏃‍♀️ woman running
💃 woman dancing
🕺 man dancing
🕴️ person in suit levitating
👯 people with bunny ears
👯‍♂️ men with bunny ears
👯‍♀️ women with bunny ears
🧖 person in steamy room
🧖‍♂️ man in steamy room
🧖‍♀️ woman in steamy room
🧗 person climbing
🧗‍♂️ man climbing
🧗‍♀️ woman climbing
🤺 person fencing
🏇 horse racing
⛷️ skier
🏂 snowboarder
🏌️ person golfing
🏌️‍♂️ man golfing
🏌️‍♀️ woman golfing
🏄 person surfing
🏄‍♂️ man surfing
🏄‍♀️ woman surfing
🚣 person rowing boat
🚣‍♂️ man rowing boat
🚣‍♀️ woman rowing boat
🏊 person swimming
🏊‍♂️ man swimming
🏊‍♀️ woman swimming
⛹️ person bouncing ball
⛹️‍♂️ man bouncing ball
⛹️‍♀️ woman bouncing ball
🏋️ person lifting weights
🏋️‍♂️ man lifting weights
🏋️‍♀️ woman lifting weights
🚴 person biking
🚴‍♂️ man biking
🚴‍♀️ woman biking
🚵 person mountain biking
🚵‍♂️ man mountain biking
🚵‍♀️ woman mountain biking
🤸 person cartwheeling
🤸‍♂️ man cartwheeling
🤸‍♀️ woman cartwheeling
🤼 people wrestling
🤼‍♂️ men wrestling
🤼‍♀️ women wrestling
🤽 person playing water polo
🤽‍♂️ man playing water polo
🤽‍♀️ woman playing water polo
🤾 person playing handball
🤾‍♂️ man playing handball
🤾‍♀️ woman playing handball
🤹 person juggling
🤹‍♂️ man juggling
🤹‍♀️ woman juggling
🧘 person in lotus position
🧘‍♂️ man in lotus position
🧘‍♀️ woman in lotus position
🛀 person taking bath
🛌 person in bed
🧑‍🤝‍🧑 people holding hands
👭 women holding hands
👫 woman and man holding hands
👬 men holding hands
💏 kiss
👩‍❤️‍💋‍👨 kiss woman man
👨‍❤️‍💋‍👨 kiss man man
👩‍❤️‍💋‍👩 kiss woman woman
💑 couple with heart
👩‍❤️‍👨 couple with heart woman man
👨‍❤️‍👨 couple with heart man man
👩‍❤️‍👩 couple with heart woman woman
👪 family
👨‍👩‍👦 family man woman boy
👨‍👩‍👧 family man woman girl
👨‍👩‍👧‍👦 family man woman girl boy
👨‍👩‍👦‍👦 family man woman boy boy
👨‍👩‍👧‍👧 family man woman girl girl
👨‍👨‍👦 family man man boy
👨‍👨‍👧 family man man girl
👨‍👨‍👧‍👦 family man man girl boy
👨‍👨‍👦‍👦 family man man boy boy
👨‍👨‍👧‍👧 family man man girl girl
👩‍👩‍👦 family woman woman boy
👩‍👩‍👧 family woman woman girl
👩‍👩‍👧‍👦 family woman woman girl boy
👩‍👩‍👦‍👦 family woman woman boy boy
👩‍👩‍👧‍👧 family woman woman girl girl
👨‍👦 family man boy
👨‍👦‍👦 family man boy boy
👨‍👧 family man girl
👨‍👧‍👦 family man girl boy
👨‍👧‍👧 family man girl girl
👩‍👦 family woman boy
👩‍👦‍👦 family woman boy boy
👩‍👧 family woman girl
👩‍👧‍👦 family woman girl boy
👩‍👧‍👧 family woman girl girl
🗣️ speaking head
👤 bust in silhouette
👥 busts in silhouette
🫂 people hugging
👣 footprints
🐵 monkey face
🐒 monkey
🦍 gorilla
🦧 orangutan
🐶 dog face
🐕 dog
🦮 guide dog
🐕‍🦺 service dog
🐩 poodle
🐺 wolf
🦊 fox
🦝 raccoon
🐱 cat face
🐈 cat
🐈‍⬛ black cat
🦁 lion
🐯 tiger face
🐅 tiger
🐆 leopard
🐴 horse face
🐎 horse
🦄 unicorn
🦓 zebra
🦌 deer
🦬 bison
🐮 cow face
🐂 ox
🐃 water buffalo
🐄 cow
🐷 pig face
🐖 pig
🐗 boar
🐽 pig nose
🐏 ram
🐑 ewe
🐐 goat
🐪 camel
🐫 two hump camel
🦙 llama
🦒 giraffe
🐘 elephant
🦣 mammoth
🦏 rhinoceros
🦛 hippopotamus
🐭 mouse face
🐁 mouse
🐀 rat
🐹 hamster
🐰 rabbit face
🐇 rabbit
🐿️ chipmunk
🦫 beaver
🦔 hedgehog
🦇 bat
🐻 bear
🐻‍❄️ polar bear
🐨 koala
🐼 panda
🦥 sloth
🦦 otter
🦨 skunk
🦘 kangaroo
🦡 badger
🐾 paw prints
🦃 turkey
🐔 chicken
🐓 rooster
🐣 hatching chick
🐤 baby chick
🐥 front facing baby chick
🐦 bird
🐧 penguin
🕊️ dove
🦅 eagle
🦆 duck
🦢 swan
🦉 owl
🦤 dodo
🪶 feather
🦩 flamingo
🦚 peacock
🦜 parrot
🪽 wing
🐸 frog
🐊 crocodile
🐢 turtle
🦎 lizard
🐍 snake
🐲 dragon face
🐉 dragon
🦕 sauropod
🦖 t rex
🐳 spouting whale
🐋 whale
🐬 dolphin
🦭 seal
🐟 fish
🐠 tropical fish
🐡 blowfish
🦈 shark
🐙 octopus
🐚 spiral shell
🪸 coral
🐌 snail
🦋 butterfly
🐛 bug
🐜 ant
🐝 honeybee
🪲 beetle
🐞 lady beetle
🦗 cricket
🪳 cockroach
🕷️ spider
🕸️ spider web
🦂 scorpion
🦟 mosquito
🪰 fly
🪱 worm
🦠 microbe
💐 bouquet
🌸 cherry blossom
💮 white flower
🪷 lotus
🏵️ rosette
🌹 rose
🥀 wilted flower
🌺 hibiscus
🌻 sunflower
🌼 daisy
🌷 tulip
🪻 hyacinth
🌱 seedling
🪴 potted plant
🌲 evergreen tree
🌳 deciduous tree
🌴 palm tree
🌵 cactus
🌾 sheaf of rice
🌿 herb
☘️ shamrock
🍀 four leaf clover
🍁 maple leaf
🍂 fallen leaves
🍃 leaf fluttering in wind
🪹 empty nest
🪺 nest with eggs
🍇 grapes
🍈 melon
🍉 watermelon
🍊 tangerine
🍋 lemon
🍌 banana
🍍 pineapple
🥭 mango
🍎 red apple
🍏 green apple
🍐 pear
🍑 peach
🍒 cherries
🍓 strawberry
🫐 blueberries
🥝 kiwi fruit
🍅 tomato
🫒 olive
🥥 coconut
🥑 avocado
🍆 eggplant
🥔 potato
🥕 carrot
🌽 ear of corn
🌶️ hot pepper
🫑 bell pepper
🥒 cucumber
🥬 leafy greens
🥦 broccoli
🧄 garlic
🧅 onion
🥜 peanuts
🫘 beans
🌰 chestnut
🍞 bread
🥐 croissant
🥖 baguette bread
🫓 flatbread
🥨 pretzel
🥯 bagel
🥞 pancakes
🧇 waffle
🧀 cheese wedge
🍖 meat on bone
🍗 poultry leg
🥩 cut of meat
🥓 bacon
🍔 hamburger
🍟 french fries
🍕 pizza
🌭 hot dog
🥪 sandwich
🌮 taco
🌯 burrito
🫔 tamale
🥙 stuffed flatbread
🧆 falafel
🥚 egg
🍳 cooking
🥘 shallow pan of food
🍲 pot of food
🫕 fondue
🥣 bowl with spoon
🥗 green salad
🍿 popcorn
🧈 butter
🧂 salt
🥫 canned food
🍱 bento box
🍘 rice cracker
🍙 rice ball
🍚 cooked rice
🍛 curry rice
🍜 steaming bowl
🍝 spaghetti
🍠 roasted sweet potato
🍢 oden
🍣 sushi
🍤 fried shrimp
🍥 fish cake with swirl
🥮 moon cake
🍡 dango
🥟 dumpling
🥠 fortune cookie
🥡 takeout box
🦀 crab
🦞 lobster
🦐 shrimp
🦑 squid
🦪 oyster
🍦 soft ice cream
🍧 shaved ice
🍨 ice cream
🍩 doughnut
🍪 cookie
🎂 birthday cake
🍰 shortcake
🧁 cupcake
🥧 pie
🍫 chocolate bar
🍬 candy
🍭 lollipop
🍮 custard
🍯 honey pot
🍼 baby bottle
🥛 glass
🎵 musical note
🎶 musical notes
➕ heavy plus sign
➖ heavy minus sign
➗ heavy division sign
✖️ heavy multiplication x
♾️ infinity
💲 heavy dollar sign
💱 currency exchange
™️ trade mark
©️ copyright
®️ registered
〰️ wavy dash
➰ curly loop
➿ double curly loop
🔚 end arrow
🔙 back arrow
🔛 on arrow
🔝 top arrow
🔜 soon arrow
✔️ heavy check mark
☑️ ballot box with check
🔘 radio button
⚪ white circle
⚫ black circle
🔴 red circle
🔵 blue circle
🔺 red triangle pointed up
🔻 red triangle pointed down
🔸 small orange diamond
🔹 small blue diamond
🔶 large orange diamond
🔷 large blue diamond
🔳 white square button
🔲 black square button
▪️ black small square
▫️ white small square
◾ black medium small square
◽ white medium small square
◼️ black medium square
◻️ white medium square
⬛ black large square
⬜ white large square
🟫 brown square
🟪 purple square
🟦 blue square
🟩 green square
🟨 yellow square
🟧 orange square
🟥 red square
🇮🇳 india flag
🇺🇸 usa flag
🇬🇧 uk flag
🇨🇦 canada flag
🇦🇺 australia flag
🇩🇪 germany flag
🇫🇷 france flag
🇯🇵 japan flag
🇨🇳 china flag
🇧🇷 brazil flag
🇷🇺 russia flag
🇮🇹 italy flag
🇪🇸 spain flag
🇲🇽 mexico flag
🇰🇷 south korea flag
"

# Function to copy to clipboard (wayland)
copy_to_clipboard() {
    echo -n "$1" | wl-copy
}

# Function to type using wtype
type_emoji() {
    wtype "$1"
}

# Main function
main() {
    # Check for -t flag
    TYPE_MODE=false
    if [[ "$1" == "-t" ]]; then
        TYPE_MODE=true
    fi
    
    # Select emoji using bemenu
    selected=$(echo "$EMOJIS" | grep -v '^$' | bemenu $BEMENU_OPTS)
    
    # Extract just the emoji (first character/sequence)
    if [[ -n "$selected" ]]; then
        emoji=$(echo "$selected" | awk '{print $1}')
        
        if [[ "$TYPE_MODE" == true ]]; then
            type_emoji "$emoji"
            echo "Typed: $emoji"
        else
            copy_to_clipboard "$emoji"
            echo "Copied: $emoji"
        fi
    fi
}

main "$@"
