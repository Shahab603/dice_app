# dice_app

A new Flutter project.

## Understanding Functions 

So now it's really time

to get our hands dirty,

write some code and learn some Dart and Flutter.

For that here I'm in a new project,

but you can also stick to the existing project

that you have.

But you should make sure that in the lib folder,

in this main Dart file you delete all the content

that's inside of it.

So that main.dart is an empty file.

Because we're going to write this app,

which we're building in this core section here

from the ground up,

step by step, all from scratch so that we can really dive

into all these core Flutter and Dart features.

So how do we start in this empty main.dart file?

How do we give Flutter and Dart some instructions

to show something on the screen?

Well, it all starts with one key instruction

that you must have in every Flutter app you are building.

And that's the runApp instruction.

Which is written like this runApp

and then followed by parenthesis and the semicolon.

This is a so-called function

and functions are a core concept in Dart

and actually in many programming languages.

Functions are simply instructions that

can be executed in your code

and you will soon learn how you can write your

own custom instructions your own custom functions

therefore as well.

Now runApp is a function

and instruction that is provided by Flutter,

so not written by you not built

into Dart the programming language but provided

by the Flutter framework.

And this instruction, as its name suggests,

is all about getting that app up and running

or to be more precise.

Its main job is actually to show some user interface

on the screen.

And that in the end is a vital task

for any app you're building.

Now, as you can see in this code editor,

I'm getting an error here,

though I do have this red squiggly line here

which indicates an error, a problem with the code.

And if you hover over such an error,

you get a more detailed description

of what's the problem here.

In this case that a function body must be provided.

Now what's that?

Now in Dart,

it's actually not allowed to run functions like this,

just like that in the main.dart file.

Instead, you must wrap instructions like this,

code like this, into other functions.

And for that we must create a custom function,

a custom instruction.

And that's done like this.

You type void,

and I'll explain what this void thing means soon,

but you type void followed by the name

of your custom command of your custom function.

Which in this case should be main.

It must be main.

And I'll explain why it must be main

in a second as well.

Followed by parentheses and then opening

and closing curly braces.

That's how you define a custom function,

a custom instruction,

if you want to call it like this, in Dart.

This here main is the so-called function name.

This here is the so-called return type.

And I'll get back to what that is soon.

And then this part here between

the opening and closing curly braces

is the so-called function body.

The code that should be executed

when this function is executed.

And that's another core programming and Dart concept.

Functions as mentioned are in the end instructions

and you can create your own instructions as you see here.

But those instructions,

those functions are not executed by the mobile device,

by the computer on which the code runs.

Unless you tell that device,

that computer to run that instruction.

And you do tell a computer to execute an instruction

by using that instruction name,

followed by opening and closing parentheses.

So in the end, what we're doing here in line six,

here we are executing a function.

We're calling a function as it's also called.

Now, I did mention that runApp is a function provided

by Flutter, so not written by you but provided

by the Flutter framework.

And since Flutter is a open source project,

you can actually inspect its code.

And attached you find a link to a file

that includes this runApp function definition.

Which is exactly that function

that we're trying to call in our code,

so that we're trying to execute in our code.

And only if you use code like this,

you are actually executing a function.

So this main function, for example,

is at the moment only being defined,

but it's never executed because we never have code

where we would call main like this.

If we would call it like this,

if we would add this piece of code,

we would execute this function.

That's why I also like to call functions code on demand.

You define them and then somewhere else

in your code you can use them as often

as you want by calling them as I just explained it,

by repeating that function name followed by opening

and closing parentheses.

And of course, it's not just you who can define functions,

but also other developers like the Flutter team did here

with the runApp function.

They define for us as part of the flatter framework.

And this runApp function must be executed,

but as we saw in this error description

it must be executed inside of a function body.

So we should actually move it

into this main function body here, like this.

In here this function can now theoretically be executed,

but now we're getting a new error.

We're getting the error,

that the function runApp isn't defined.

So in the end, Visual Studio Code is telling us

that it understands that we want

to execute a function called runApp,

but it doesn't find this function anywhere.

And where would it find it?

In our code file

we only have the main function, nothing else.

Where should runApp come from?

