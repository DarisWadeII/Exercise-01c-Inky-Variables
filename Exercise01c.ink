/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Variable types: integer, float, boolean
 - Variable assignment
 - Printing variables
 - Variable checking
 
 In the assignment:
 - Add four more knots
 - Assign at least TWO new variables through player choices
 - Print at least one of the variables to the player in a passage
 - Check the value of a variable and have it do something
 
 Variable Checking!
 
 Equality:  "Spot" == "Spot"
 Not equality: 1 != 2
 Greater: >
 Less: <
 Great or equal: >=
 Less or equal: <=
 
*/

VAR goodness = 0
VAR first_cycle = ""
VAR second_cycle = ""
VAR final_cycle = ""
VAR badness = 0
VAR midness = 0

-> spotsatykotse 

== spotsatykotse == 
Spotsatykotse
*[Begin] -> a_stir

== a_stir ==
REEEEEEEEEEEEEEEEEEEE.

What a horribly piercing sound.

The only thing worse is your headache.  
+ [Get up] -> judgement_hall

== judgement_hall ==
{your_surroundings: | Painfully, you slowly but surly rise to your feet.}  The last thing you remember is falling and hitting your head, now you stand in the middle of an expansive dimly lit room with a huge door in it's center.
* [Examine your surroundings] -> your_surroundings
+ {your_surroundings} [Examine Door] -> examine_door
+ {big_voice} [Choose your Karma] -> tripping_death

== tripping_death ==
There are three white cloud's before you.  Staring at the first cloud make's your taste bud's sour all the while giving you a comforting feeling of being somewhere clean.  Staring at the second cloud you feel an overwhelming sense of nostalgia and holiday cheer, for some reason you are reminded of hawaii as well.  Staring at the third cloud give's you a sense of failure as if you have broken some ancient custom that should never have been broken, you do get the feeling you might make alot of money though.  All you can tell is what you choose will affect you in a way deeper than you could ever know.
 + [First Cloud] -> guide_rufiki
 ~ first_cycle = "Lemon Party"
 ~ goodness = goodness + 1
 
+ [Second Cloud] -> guide_sleddy
~ first_cycle = "Chrismas Vacation"
   ~ midness = midness + 1
+ [Third Cloud] -> guide_mother
~ first_cycle = "Pillar of the Community"
~ badness = badness + 1



== rufiki_guide ==
You see before you what looks to be an old grey baboon with crazy prism looking eyes using one arm to hold onto a vine that is appearing out of thin air.  The other hand is balled into a fist clearly concealing something.  
+ ["Who are you and why am I here"] -> first_answer
* {first_answer} ["You seem familiar, is your name..."] -> no_relation
* {first_answer} [Answer a Riddle] -> good_riddle
* {first_answer} [Answer some fun Trivia] -> good_trivia

== good_riddle == 
"What did the doctor prescribe to the sick lemon who's hospital room had incredibly dirty floors?"
* [Pinesol] -> sorta_wrong1
* [Lemonaid] -> lemon_reborn

== lemon_reborn ==
Again the aboon begins meniacally laughing while swinging violently back and forth in place.

"My work here is done."  

He then reveal's whats in his closed hand, a beautiful pure yellow Lemon stand's proudly between his finger.
* [Reincarnate as the Lemon] -> positive_lemon
* [Enter Pinsol Heaven] -> pinesol_heaven

==positive_lemon==
"Change is good, for the body and the soul."

You have been reborn as this beautiful Lemon, you will surely be plucked and chosen for a delicious dish or perhaps you will await in the produce ilse of the grocery establish until you find a new home.  Perhaps you will have salt poured on you to be eaten as a snake or squeezed into a fresh batch of lemonaid, either way Im sure you will enjoy it.  After this hundreds of positive lifetime's will surely follow.
* [The Cycle Continues] ->a_stir

== pinesol_heaven==
"Cant cut it out, it will grow right back."

"Alright then, come now, come."  The Baboon wave's you over to him.

He begin's to point at your chest, "Let us go to Pinsolupendi forever."

* [Go to Pinsolupendi] ->pinsol_upendi

==pinsol_upendi==

You and the Baboon begin to fly high at astronomical speed's.  The jungle expand's at a rapid rate, you see lemon's everywhere.  Even the cloud's are lemon shaped.  Gorgeous waterfalls made of the lemony fresh elixer are everywhere the eye can see.  There is no place in all of creation more clean and you feel at piece. 
-> DONE
== sorta_wrong1 ==

"Wait how would Pinesol help cure a sick lemon, it's literally made with the blood of innocent lemon's, such a dissapointing answer, it seem's you have not learned from the past and are not ready for sour ascension."
~ goodness = goodness - 3
* [One Last Chance] -> rufiki_guide

== good_trivia ==
"How did you get here?"
* ["I slipped on a floor recently treated with pinsol splitting my head open."] -> right_pinsol
* ["While turning a street corner a large TV playing the classic movie "The Lion King" plummeted from a window onto my head."] -> lemon_hell

== lemon_hell ==

The strange baboon squashes what was in it's hand and a liquid leaks from its clentch.
"WRONG!"

He then proceed's to yank down on the unnatural magical hanging vine to reveal a trapdoor underneath your feet.
* [Kuzimi] -> worst_lemon

== worst_lemon ==
You plummet into what look's to be some sort of large container falling onto what seem's to be rotten lemon's.  You can only hear the awful static of buzzing all around of inscects feasting on the rot.  The only light that pierces through is small oval shaped hole's in the side of the container.  However they soon begin to dissapear as a distinct liquid with a lemony fresh odar pour's through them filling the container to the brim.  This is your new permanent home.
->DONE

== right_pinsol ==
"Oh, yes, the past can hurt. But the way I see it, you can either run from it or learn to smell from it.  Always smell for lemonfresh."  "There is still for your escape from the cycle yet.  Now go return and use what you have learned." 

"As for myself it's time for a yoga break."
* [Return back to your old Life] -> pinesol_return

== pinesol_return ==
You wake up in a hospital bed, on the surface you believe it was all a dream but deep down you know the lemony truth.  From this point on you always made sure to scout out lemonfresh with your sniffer when entering any room.  But life goes on and even though one life changing mistake is corrected another event is just around the corner.
* [Ooups] -> a_stir

== no_relation ==
"No, no, no, no.  My name is RO-fiki, very legally distinct.  I've never even been to Africa before my chosimba."
~ goodness = goodness + 1
+ [Consider your next steps] -> rufiki_guide


== first_answer == 
"Who are you, that is the real question."

"Maybe YOU should be asking why to yourself.  The ANSWER live's in you."

The Baboon begins meniacally laughing at his response while swinging violently back and forth in place.

"It is time, there are 2 path's, make your choice. Don't dawdle hurry up."
+ [Consider your next steps] -> rufiki_guide

== guide_rufiki ==
You enter the first cloud and emerge somewhere new.  It' seems you have been transported to an opening in a lush jungle with what look like palm tree's hanging over.  It's somewhat humid but to your surprise the jungle floor is very clean, there are no annoying bug's whatsoever and it smell's quite.. fresh.  All of a sudden you hear a voice speaking some mumbo jumbo. 

"ASANTE SANA SQUASH LEMONA.."
*[Turn Alround] -> rufiki_guide
== guide_sleddy ==
You enter the second cloud and emerge somewhere new.  It's a snowy hill leading to a forest open trail with a tiny shack nearby, it looked perfect for sleding, in the distance you can see a road with a Walmart across it, this is the not a place you thought you would end up in.  All of a sudden you notice a song being played from all around loudly like its coming from a large speaker.  It's a christmas song.

IT'S THAT TIME, CHRISTMAS TIME IS HERE, 
EVERYBODY KNOWS THERE'S NOT A BETTER TIME OF YEAR,
HEAR THAT SLEIGH, SANTA'S ON HIS WAY...

Then all of the sudden the music muffle's down to a purr and a loud cheery voice can be heard behind you singing.. "HIP HIP HOORAY FOR CHRISTMAS VACATION!!!"
*[Turn Around] -> sleddy_guide


== guide_mother ==
You enter the third cloud and emerge somewhere familiar.  It's a living room, your living room or well it used to be.  It was your parent's old place you lived at the first eight year's of your life but it had to be demolished because the government had to build some shopping malls for the community or something like that, so you moved.  All of a sudden you can hear what sounds to be an oven door open behind you and the intense aroma of your favorite kind of cookie's hit's the air.

You hear a slam of the stove closing followed by a hollar, "OWWWWW, Good Lord!!"  That voice, you know that voice, could it be..?
*[Turn Around] -> mother_guide



== sleddy_guide ==
  You see before something youd never thought youd see, a large talking sled with animated eyes and a mouth somehow standing before you upright with no arms or legs {second_answer: |singing a song with christmas spirit}.
+ ["What in the world.."] -> second_answer
* {second_answer} ["I've never seen National Lampoon's Christmas Vacation.."] -> intense_responce
* {second_answer} [Answer a Riddle] -> mid_riddle
* {second_answer} [Answer some fun Trivia] -> mid_trivia

==mid_trivia==
The two of you seemingly warp to a branching path in the middle of the forest you witnessed from the hill.  There is a red hue here that keep's you uneasy.
"How did you get here?"
* ["Going to class I was walking down a ramp and slipped on a patch of ice, my head bounced of the concrete like a basketball."] -> right_ice 
* ["My cat got fried from chewing on my Christmas Tree Light's cord, long story short I was nearby so my hair caught on fire, in a panic I ran to the kitchen and accidentally knocked my head hard against a doorway that was a bit too short."] -> sled_judgement
==right_ice==
"Dang that's a bit of bad luck, in Christmas Vacation a little sliding around never hurt anybody, pretty unlucky."

"You know what, I cant just stand here denying you and your family the joy of watching Christmas Vacation together, it would be like when Clark Griswold's boss didnt give out bonuses that year, I'd just be downright heartless."

The sled does a little spin to create a tiny tornado that head's your way that causes you to fall and slip on your bum (this time) heading towards the left path.

The sled begins to yell as you slide, "Just make sure to keep your eye's open for ice patches, especially during the winter month's.." The voice fade's out.
* [Return back to your old Life] -> ice_return

==ice_return==
You wake up on a bench inside a university building with a crowd of people around.  Everyone was worried about you and it makes you feel less alone.  You remember what Sledy said and take it to heart, you immediately go out and buy slick resistant footware for the winter month's.  And heck all that yappin about National Lampoon's Christmas Vacation get's you to buy it on blu ray since you live in the year 2009, what do you know it's an instant classic and now you watch it year after year with your folks building up a nostalgic treasure.  But life is long and fancy footware for just winter wont protect you from everything.
* [****] -> a_stir
==sled_judgement==
"You gotta kidding me, you just ripped that story off from Christmas Vacation."

"HOW DARE YOU!"  "BEGONE DEFILER OF THE RIGHTIOUS NOSTALGIC SPIRIT, BLASPHEME NEVERMORE."

A huge gust of icey freezing cold wind below's behind you that blow's you toward the right side of the hill. 

* [Tartarus] -> sled_hell
==sled_hell==
You begin bign to spin rapidly on the icy path, you spin, spin and spin.  Your skin begin's to chaffe open as the cold icey wind dry's it out.  It's freezing and you see no end path in sight.  You are completely disoriented with no end in sight, eventually even up and down doesnt make any sense anymore you have such powerful vertigo and nausea.  Somehow that isnt even the worst part, the whole time you exist in this eternity just as you had entered this realm you hear the loud song singing "IT'S THAT TIME, CHRISTMAS TIME IS HERE, EVERYBODY KNOWS THERE'S NOT A, BETTER TIME OF YEAR, HEAR THAT SLEIGH, SANTA'S ON HIS WAY, HIP HIP HOORAY FOR CHRISTMAS VACATION."  
->DONE
== mid_riddle==
"What is the greatest Chrismas movie on planet earth and a place the coolest sled ever gets to slide."
*[National Lampoon's Christmas Vacation] -> vhs_reborn
*[A patch of Ice] -> kinda_wrong

==vhs_reborn==
"Halleluya, holy ****" screamed the sled at the top of his lung's.
"You did it partner, through the lesson's of faith and family you surely pulled through."

The sled does a back flip.

"This call's for a change of scenery."

Instantly both you and the sled seemingly warp deep inside the forest you withnessed from the hill before.  There is an odd blue hue to the area that bring's you comfort.  There lay two pathway's on the hill before you.

The sled stare's patiently at you as if wanting you to make a decision.
*[Point to the left toward Nostalgic Growth] -> vhs_ascension 
*[Point to the right for Endless Nostalgia] -> endless_vacation
== vhs_ascension ==
"I see you have chosen to ascend to a Nostalgic Buhdda.  You will be a beacon for so many beautiful memories for year's to come.  I know you'll transcend the cycle yet."

The sled flip's down in front you, "Hop on partner."

You jump on the sled and an instant you hear a loud WHOOOOOSH as flame's lay in the sled's wake and off you go.  As the sled goes faster you begin to reform into a the shape of a VHS tape, but not just any VHS tape.  You become a VHS tape copy of Nationl Lampoon's Chrismas Vacation.  You are back in the early 90's placed on a cozy shelf of a loving home where you will be watched year after year and for the next hour and thrity seven minute's will fill a family's hearts full of joy and of course later nostalgia.  Im sure after your VHS tape stops working you will be reborn into a variety of live's.
*[The Cycle Continues] -> a_stir
==endless_vacation==
"Really pal, that's just downright awesome, your coming home with me brother."

The sled slide's himself under you causing you to land on your stomach safe and sound on top of him.  You hear a powerful VROOOM and flame's shoot out from the side's.
The speed is insane but you don't feel afraid, in fact you feel quite nostalgic.  Finally at the apex of the path is an uppward tilted slop.

ZOOM!!!

You and Sledy are flying now, up, up and away.  You begin to see everything you ever felt nostalgic for in your life pass you by and it feel's so good but you don't stop there.  No, not yet, there's a whole new more powerful level of nostalgic spritual energy to reach, that of sledy's demeanor.  The christmas VHS realm where filled with a variety of huge CRT TV's all playing the greatest christmas film ever witnessed, forever and ever.
-> DONE


==kinda_wrong==
"What are you on brother, what does an ice patch have to do with faith and family value's, what are you talking about."
"I mean there is patches of ice in the movie but still cmon man the answer was Christmas Vacation, it was an easy layup man, kind of a buzzkill."  
The sled give's a dissapointing look.
~ midness = midness - 3
*[One Last Chance] -> sleddy_guide

==intense_responce==
The sled looks caught off guard.

"What the ****, how in tarnations have you not seen National Lampoon's Christmas Vacation, what are you some kind of savage beast."

Quickly the sled recorrects his demeanor.

"Well shoot, that's a real shame, real shame there partner.  No wonder im here to help you, you aint got nostalgic spirt to bask in."

The sled says with a sly grin, "But dont you worry you'll be a seeing plenty of old Clark Griswold's crazy antic's soon enough.
~ midness = midness + 1
* [Make a Choice] ->sleddy_guide
== second_answer==
Before you could finish speaking the sled interupts with an enthusiastic tone.

"Well hey there partner, Im Sledy the sled, you know the sled from National Lampoon's Christmas Vacation.  I heard you might be in a little bit of trouble and came to see ya through."

The sled paused as it took note of your confused demeanor.

"Oh right youz probly wondering what I wassa yoddlin there.  I was just being a little nostalgic is all, singing the opening from the legendary National Lampoon's Christmas Vacation, you know the incredible move im from.  Im sure you've heard it somewhere."

"Anywho, like I said Im here to get ya going again, so here' a couple of options!"
* [Make a choice] -> sleddy_guide
== mother_guide ==
  
+ ["Who are you and why am I here"] -> third_answer
* {third_answer} [""] -> 
* {third_answer} [Answer a Riddle] -> bad_riddle
* {third_answer} [Answer some fun Trivia] -> bad_trivia

== your_surroundings ==
The room seems to be shaped in a wide circle, with very tall maroon walls, the ceiling has several black chandeilier's hanging from above holding a vareity of differently sized candle's with blue wax and purple flame.  Besides the center gate there seem's to be no other door's visable. 
* [Examine Gate] -> examine_door

== examine_door ==
The door's size cannot be understated but it is hard to tell just how large it is due to the expansive nature of the room.  On the door you can see interesting linework with symbol's you dont understand.  In the center of the door is a wide frame split into three sections.  The left section is blank and the right section is blank, the center is blank.  Underneath the center is the outline of a huge keyhole.  You have no idea what any of this means.
* [?] -> journey_begins
+ {big_voice} [Next] -> judgement_hall

== journey_begins ==

OOUUUUEEEEYAAAAA, OOUUUUEEEEYEEEEEEAYAEEEEEEEEEEEEEE 

SHIMILACKAHAMA, SHIMILACKAHAMA.

OOUUUUEEEEYAAAAA, OOUUUUEEEEYEEEEEEAYAEEEEEEEEEEEEEE

Booming chant's bellow across the open air leaving you freightened and confused.

Out of nowhere three seperate white cloud's appear before you on the ground..

* [!!!] -> big_voice

== big_voice ==

"CHOOOOSE YOOUUUUUUR KARMAAAAAAAAAAAAAA!!!" screams a lound echoing gruff voice from the ceiling.  It remind's you of an intense game show announcer.

* [Next] -> judgement_hall





