 /* Reflection

Name: Ruslan Zhabskyi

Student Number: 20104105

Link to the development Blog on Blogger:                
    https://ruslanzhabskyi.blogspot.com/

Link to Video on YouTube:
    https://youtu.be/Qeb-yvyci1A


Part A - Mark (11 /11)
-----------------------------

Includsion of completed:
- Readme            (1)
- Reflection        (4)
- Video             (4)
- Blog              (2)

These are all created to spec, so I am awarding myself 11 marks.


Part B - Mark (4 /4)
-----------------------------

- Comments,
- Indentation, 
- Naming, 
- Structure of code.

Part C - Mark (4 /5)
-----------------------------
Use of standard programming control constructs 
(if, loop, nesting):

* if statements
- "Assignment2_20104105_Ruslan_Zhabskyi" tab - line 98 - nested if statement checks if the game continous
based on number of lives left and the player response.
- "Assignment2_20104105_Ruslan_Zhabskyi" tab - line 151 -  if statement inside of for loop.
- "Assignment2_20104105_Ruslan_Zhabskyi" tab - line 188 and 201 - nested if statements to check boolean 
condition inside key handler method.
- "Assignment2_20104105_Ruslan_Zhabskyi" tab - line 151 -  if statements to control hero's position and launch fire.
- "Pattern" tab - line 81 - if statement used inside loops to draw chessboard pattern 
(modulo condition is tested).
- "Pattern" tab - line 36 and "Fire" tab - line 23 - if statement for setter methods.

* Loops
FOR loops used on:
- "Assignment2_20104105_Ruslan_Zhabskyi" tab - line 89 display and update array of Rain objects.
- "Assignment2_20104105_Ruslan_Zhabskyi" tab - line 148 Collision Detection between hero and rain objects using a for loop.
- "Player" tab - line 91 - for loop to sort scores in DESC order within the scoreboard.

While loops use on:
- "Assignment2_20104105_Ruslan_Zhabskyi" tab - line 62 to create and initialize an array of Rain objects.
- "Assignment2_20104105_Ruslan_Zhabskyi" tab - line 260 to reset rain objects.

NESTED loops used on:
- "Pattern" tab - line 77 - nested for loop to draw background pattern.
- "Player" tab - line 116 - nested for loop to sort scores in DESC order within the scoreboard.

I have multiple examples of nesting, if statements and loops, so 4/5.

Part D1 - Mark (9 /10)
-----------------------------
- "Assignment2_20104105_Ruslan_Zhabskyi" tab - line 40 - sizing.
- "Assignment2_20104105_Ruslan_Zhabskyi" tab - lines 104, 134, 149 - collision detection between multiple objects.
- "Assignment2_20104105_Ruslan_Zhabskyi" tab - lines 174 - hero fires an object.
- "Assignment2_20104105_Ruslan_Zhabskyi" tab - lines 106, 280 - scoring (working and overlaid).
- "Assignment2_20104105_Ruslan_Zhabskyi" tab - line 122, 255 - reset game implemented and works correctly.

My game demonstrates use collision detection, scoring, high score table, 
improved graphics, fonts, lives and the game resets correctly to play a new game.
Therefore I score 9/10


Part D2 - Mark (5 /10)
-----------------------------
I have a key handler set up on line 162 - "Assignment2_20104105_Ruslan_Zhabskyi" tab
it handles: 
- left (LEFT cursor key) 
- right(RIGHT cursor key)
- up (UP cursor key)

Additional keys include
- [space] to fire an acorn 

I have working key handler and an additional 1 key feature, so I am awarding 5/10.


Part D3 - Mark (8/10)
-----------------------------
Collision detection BESPOKE METHODS defined in main program file ("Assignment2_20104105_Ruslan_Zhabskyi" tab):

villainHit() on line 219 to detect collision between villain and fire (rect-point). Called on line 104.

--

heroHit() on line 230 to detect collision between hero and villain (point-rect). Called on line 134.

---

heroCollectsRain() on line 241 to detect collision between hero and rain which is an array of objects (circle-circles).
Called on line 148.

Edge conditions of the Game Board are handled properly and can be found on:
"Fire" tab on line 67, "Hero" tab on line 67 and "Villain" tab on line 70

I have the basic collision detection between 3 objects one of which is an example of collision with objects from the array.
I am also checking edge conditions, therefore I am scoring myself 8/10.


-----------------------------
Part E USER DEFINED CLASSES
-----------------------------

Part E1 - Mark (9 /10)
-----------------------------
Excluding the player class and the main program, I have 5 other classes defined in their own files/tabs:

1- Fire
2- Hero
3- Pattern
4- Rain
5- Villain

Each of these user-defined classes has appropriate fields, constructors, getters, setters.
These are highlighted as follows:

1.Fire CLASS
  Fields begin line: 3
  OVERLOADED Constructors:43, 52
  Getters begin line: 8
  Setters begin line: 22
  Bespoke methods begin line: 60

2.Hero CLASS
  Fields begin line: 3
  OVERLOADED Constructors: 45, 52
  Getters begin line: 17
  Setters begin line: 30
  Bespoke methods begin line: 60

3.Pattern CLASS
  Fields begin line: 3
  OVERLOADED Constructors: 59, 66
  Getters begin line: 10
  Setters begin line: 28
  Bespoke methods begin line: 75
  
4.Rain CLASS
  Fields begin line: 3
  OVERLOADED Constructors: 39, 47, 54
  Getters begin line: 8
  Setters begin line: 19
  Bespoke methods begin line: 63
 
5.Villain CLASS
  Fields begin line: 3
  Constructor: 57
  Getters begin line: 9
  Setters begin line: 27
  Bespoke methods begin line: 63

I have documented 5 classes and they include overloaded constructors therefore I am scoring 9/10.

Part E2 - Mark (4 /10)
-----------------------------

Class bespoke methods i.e. private helper methods:

Private helper methods:

1. Hero Class

line 101 - takes in 1 parameter and returns a value

2. Pattern Class

line 95 - private void method which updates variables

Public methods:
3. Player class

line 85, 110 - overloaded method which takes in 1 parameter

4. Rain class

line 75, 84 - overloaded method which takes in 1 parameter

5. Hero class
line 85 - bespoke methods with no return value for the hero to move certain direction

I have multiple methods demonstrating no return value, accepting parameters, returning values and 
overloading. Scorring myself 7/10.


Part E3 - Mark (8 /10)
-----------------------------

- The user-defined class(es) are USED in an appropriate manner 

multiple declarations of user defined classes are USED:
[Assignment2_20104105_Ruslan_Zhabskyi] line 11, declaring an object hero of type Hero
[Assignment2_20104105_Ruslan_Zhabskyi] line 12, declaring an object villain of type Villain
[Assignment2_20104105_Ruslan_Zhabskyi] line 13, declaring an object fire of type Fire
[Assignment2_20104105_Ruslan_Zhabskyi] line 14, declaring an object player of type Player
[Assignment2_20104105_Ruslan_Zhabskyi] line 15, declaring an object rain (note: array) of type Rain
[Assignment2_20104105_Ruslan_Zhabskyi] line 16, declaring an object pattern of type Pattern

[Assignment2_20104105_Ruslan_Zhabskyi] line 53, calling Hero() constructor to build hero object in a memory and 
initialising the fields in the object with a starting value
[Assignment2_20104105_Ruslan_Zhabskyi] line 54, calling Villain() constructor to build villain object in a memory 
and initialising the fields in the object with a starting value
[Assignment2_20104105_Ruslan_Zhabskyi] line 55, calling Fire() constructor to build fire object in a memory 
and initialising the fields in the object with a starting value
[Assignment2_20104105_Ruslan_Zhabskyi] line 56, calling Pattern() constructor to build pattern object in a memory 
and initialising the fields in the object with a starting value
[Assignment2_20104105_Ruslan_Zhabskyi] line 62, calling Rain() constructor to build rain object in a memory 
and initialising the fields in the object with a starting value by using a while loop

getters/setters are USED on...
[Assignment2_20104105_Ruslan_Zhabskyi]line 175, use of setter for fire speed 
[Assignment2_20104105_Ruslan_Zhabskyi]lines 219, 230, 241, use of getters for collision detection between objects
[Assignment2_20104105_Ruslan_Zhabskyi]lines 270, 285, use of getters to display player's name
...

default constructors USED on lines...
[Assignment2_20104105_Ruslan_Zhabskyi] line 53,54,55, for hero, villain and fire

overloaded constructors USED on lines...
[Assignment2_20104105_Ruslan_Zhabskyi] line 56, 62, for pattern and rain


I have examples of declaration, initialisation, calling the getters & setters, calling an overloaded constructor,
therefore I am scoring myself 8/10


------------------------
PART F - DATA STRUCTURES
------------------------

Part F1 - Mark (4 /10)
-----------------------------
- Use of a data structure to store information i.e. array

[Assignment2_20104105_Ruslan_Zhabskyi] declared on line 15 to create an array of non-primitive rain objects of type Rain, 
initialized on line 62 by using a while loop. Used it on line 89 to display and update rain objects, and
line 148 to detect collision between rain objects and hero object.

The program also has an array of scores in the Player tab however I am not counting it towards my scores
as it was copied with the Player class from the pong game. I am scoring myself 4/10.
...

Part F2 - Mark (7 /10)
-----------------------------
- Calculations performed on the information stored

[Player] line 53, modified highestScore() method from the Player class to retrieve the highest score
by using a max() method.

[Player] line 85, modified toString() method from the Player class to sort scores from highest to lowest.
Elements in the array are checked as part of a loop using .length. Each value is compared and possition (index) of
the value in the array is updated by using temp variable

I also included overloaded method to the [Player] line 110 which performs the same calculations,
but displays only top 3 scores.


TOTAL MARK = 11 + 4 + 4 + 9 + 5 + 8 + 9 + 7 + 8 + 4 + 7 = 76
COMPLEXITY MULTIPLIER: I have fully functioning game with new game, lives, and
scoring, leader board, additional features, hence adding *1.0 complexity multiplier.

FINAL CHECK:
I have checked the constraints and I am not breaking any constraints

*/
