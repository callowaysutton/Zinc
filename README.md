Welcome to Zinc!
===================

Welcome to **Zinc**[^Zinc], a Drag and Drop **or** Text Based programming language for the new comers who want to learn how to program.

Little side note:  <i class="icon-cog"></i> **Settings** dialog.

----------


How to Set Up Zinc and Use it?
-------------

As of right now Zinc **isn't compiled** and this repository is mainly for having a backup where I can look at old code I obsoleted (wow that's a word) and see where it went wrong/how I can bring it back.
Anyways you're here for the project,

> **Instructions**
>
>  1. First you have to download Zinc (The latest commit is best)
>  2. The Second thing you have to do is set the file: QB64.EXE as the application to open .BAS files
> - You can do this by opening one of the .BAS files and selecting it in the pop-up box by going to "More Apps" then "Loop for Another App on this PC"
>  3. After this you can read/write to any of the files and also **contribute to the code!** Check out the Running Zinc section for more information).

#### <i class="icon-file"></i> Opening/Creating Projects

> Not Implemented Yet

<del> You can open a project by clicking File>Open or by clicking on the Folder<i class="icon-folder-open"></i> button in the menu bar. You can create a new project by clicking File>New Project or by clicking the <i class="icon-file"></i> button in the file menu. </del>

#### <i class="icon-folder-open"></i> Switch to another document
> Not Implemented Yet

<del>You can quickly switch between projects by going to File>Open Recent... and clicking the last project you were working on. This is great for if your switching to a new version of Zinc or borrowing (;-D) code from a different project.</del>

#### <i class="icon-pencil"></i> Programming in Zinc

Zinc supports inline QBasic and QB64 along with the ever-growing Zinc commands. Zinc's syntax is almost 100% identical to QB64, so it is very easy to learn even if you just started to code yesterday.
Example in QB64:
```
 SCREEN 12
DIM row AS INTEGER, cnt AS INTEGER, cstart AS SINGLE, cend AS SINGLE
DIM xrot AS INTEGER, yrot AS INTEGER, scale AS INTEGER
_FULLSCREEN                   
cstart = 0: cend = 8 * ATN(1)
xrot = 6: yrot = 60: scale = 4
row = 1
CIRCLE (320, 240), 15, 9: PAINT STEP(0, 0), 9
DO
    FOR i = cstart TO cend STEP .04
        x = 300 + (scale * 40 - (row * xrot)) * COS(i)
        y = 200 + (scale * 40 - (row * yrot)) * SIN(i)
        cnt = cnt + 1
        COLOR 7: _PRINTSTRING (x, y), "HELLO WORLD!", 0 
        IF cnt = LEN(text$) * 8 THEN cnt = 0: EXIT DO
        _DISPLAY
        COLOR 0: _PRINTSTRING (x, y), "HELLO WORLD!", 0
        _DELAY 0.02
    NEXT
LOOP UNTIL INKEY$ = CHR$(27)
COLOR 15
END
```
Example in Zinc:
```
SCREEN 12
cstart! = 0: cend! = 8 * ATN(1)
xrot% = 6: yrot% = 60: scale! = 4
row% = 1
CIRCLE (320, 240), 15, 9: PAINT STEP(0, 0), 9
DO
    FOR i = cstart! TO cend! STEP .04
        x = 300 + (scale! * 40 - (row% * xrot%)) * COS(i)
        y = 200 + (scale! * 40 - (row% * yrot%)) * SIN(i)
        cnt% = cnt% + 1
        COLOR 7: _PRINTSTRING (x, y), "HELLO WORLD!", 0
        IF cnt% = LEN(text$) * 8 THEN cnt% = 0: EXIT DO
        _DISPLAY
        COLOR 0: _PRINTSTRING (x, y), "HELLO WORLD!", 0
        _DELAY 0.02
    NEXT
LOOP UNTIL INKEY$ = CHR$(27)
COLOR 15
END
```

> You might be able to tell that the code in Zinc is a little bit shorter, this is from Zinc being able to have variables declared anywhere in the code.
> 
#### <i class="icon-trash"></i> Obsoleted Commands/Blocks

> Nothing as of right now

#### <i class="icon-hdd"></i> Export a Project

You can export Zinc projects by just compiling it <del>or by getting the Export as Application extension which will give the option to add an icon and compile binaries for Windows, Linux, and MacOS[^Export]</del>
>Currently Working on this:
><i class="icon-hdd"></i> **Export Project** in the menu bar




----------


Running Zinc
-------------------

Zinc is pretty easy to run, all you have to do is find the file called 'Start Zinc.EXE' and you can run it.
Sorry to the people who use Linux. I will try and make a working ported version for you guys later. (Not Mac though, I can't test or compile it, sorry)

#### <i class="icon-refresh"></i> Updating Zinc

<del>You can check for updates by clicking the <i class="icon-refresh"></i> button </del> or by going to the Github repo and getting the latest dirty build.
> **Note:** Only getting dirty builds will work for now.

#### <i class="icon-refresh"></i> Saving your Project

You can save your project by pressing <kbd>Ctrl+S</kbd> or by going to the file menu and pressing Save Project. 

> **Note:** Not all features are present in the current build

----------


How Zinc Works
-------------
When a Zinc project is compiled into a binary executable the code is compiled into C++/Assembly which will provide you with all resources needed to run your project smoothly.

When Zinc compiles this is the workflow:
```flow
zc=>start: Zinc
e=>end
qb=>operation: Compiles into QB64
c=>operation: Converts your code into 'closer to the metal' code
cond=>condition: Everything is as close
  to the metal as possible?

zc->qb->c->cond
cond(yes)->e
cond(no)->c
```

#### <i class="icon-upload"></i> Publish your Project

You can publish your project by pressing the <i class="icon-upload"></i> **Publish** button. This will automatically upload your project (If it is under 10 Mb and doesn't use the INCLUDE command) to my website where you can view others codes and give advice. 

There are a few rules for publishing:
- No Unreasonable cursing. Cursing is allowed but you have to remember that younger kids will most likely see what you have said
- No Nudity/18+ stuff unless a recognized artwork on WikiMedia
- Read the community Code of Conduct for more rules


#### <i class="icon-upload"></i> Publishing to Other Websites

If you want to, for some reason, build a project in Zinc for Ludum Dare, you can, as long as you state somewhere visible in the project that it was made using Zinc (This is only for if you are using the Drag and Drop based programming language)

> **Note:** The <i class="icon-upload"></i> button is hidden for now



---
[toc]

  [^Zinc]: [Zinc](https://github.com/callowaysutton/Zinc) is a new programming language aimed at beginners in code who want to learn <i>low level</i> programming. It features drag and drop programming, along with text-based programming.

[^Export]: This feature is currently under development and probably will not be available for around a year.

  [1]: https://github.com/callowaysutton/Zinc