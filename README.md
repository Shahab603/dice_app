# dice_app

A new Flutter project.

## 06-Positional and Named Arguments

Now as mentioned,

MaterialApp then also needs a input value though,

because like this,

this MaterialApp thing

doesn't provide too much information to Flutter

and to runApp

regarding what should be displayed on the screen.

Instead, you must pass more information to MaterialApp

so that that information

will then indirectly also be picked up by Flutter.

And for that, between those parentheses here,

which belong to MaterialApp,

you must provide some input value to MaterialApp.

And that input value is now all about defining

what should be shown inside of that app UI

that will be displayed on the screen.

And for this, MaterialApp also takes a input value,

a parameter, though not a parameter

that would be defined like this

as it's the case for runApp,

a so-called positional parameter or positional argument.

Because here for runApp,

the first value you pass to runApp

is used as a value

for the first parameter in this parameter list.

And, of course, runApp only takes one parameter,

but other functions

could also take multiple comma-separated parameters

and then values would be passed in and matched by position.

So the first value provided to a function

when calling that function

would be mapped to the first parameter,

the second value to the second parameter, and so on.

That's one way of accepting

and receiving parameters in Dart.

But an alternative way,

which you will also learn in greater detail later,

is to define functions that take so-called named parameters

or named arguments.

When defining the function,

you wrap those parameters between curly braces.

And, again, that is also something you will learn about

later in the course in greater detail

and which you will do a lot throughout the course.

But in the code where you define a function,

you would wrap those named parameters between curly braces.

And the difference

compared to positional parameters or arguments

is that now it's not important

in which order you pass values to the function

when you call it,

instead you identify those parameters by their name.

And that's exactly how MaterialApp

is implemented internally.

In the end there, you have a long list of named parameters,

as you can tell by this opening curly brace

and that closing curly brace thereafter

that wrap all those parameters

and those parameters are then simply identified by name.

Now regarding super and this,

these are all things we'll learn about

throughout the course.

But this MaterialApp thing

which you can execute,

in the end, is defined by using named arguments internally.

And as a developer, it's up to you

whether you want to use positional or named arguments

when defining a function.

When using it, you of course have to use

what has been defined in there.

And here for MaterialApp,

it's this home named argument

that has to be set to display something on the screen.

And if you type here,

you, of course, also get suggestions.

Even without typing, if you press Control + Space,

you'll get a list of suggestions.

And here you in the end see all these named arguments

that you could possibly set,

though many of them are, of course,

for niche settings or configurations.

The home named argument is important though,

because that's the main argument you must set

for MaterialApp to define which kind of widget,

which kind of UI element

should be displayed inside of that app UI

that's passed to runApp.

And here I wanna display some text

by using the built-in Text widget,

which is written like this,

and which is also executed like a function.

Just like MaterialApp,

Text is coming from Flutter

and provided by the Flutter team.

