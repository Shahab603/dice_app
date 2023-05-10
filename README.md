# dice_app

A new Flutter project.

## 07- Combining Multiple Widgets

Now the Text widget, if you hover over it,

also actually takes some named parameters.

You find a curly brace and a long list of parameters

between those curly braces here as well.

But there also is one positional parameter

and that's possible as well.

You can mix and match those different parameter types

as needed when defining functions.

That is totally up to you, the developer.

And here this positional parameter

is indeed what we must set when using Text.

Otherwise, we get an error,

that one positional argument is expected

but zero arguments are found.

And here the one piece of data that we must pass in

is some human readable text,

which should be wrapped between single or double quotes,

and single quotes are more common.

And here you could write Hello World for example.

Now these single or double quotes are required

because without them, Dart would think that Hello

or World exclamation mark should be keywords or identifiers.

Now Hello and World are definitely not keywords

built into Dart.

So identifying these words as such fails

and they're also not valid identifiers

because neither in the Material Dart package,

which we're importing,

nor in your file is there a Hello or World function

or anything else you could be referring to here.

Referring to runApp, MaterialApp, and Text worked

because those things are indeed

defined here in Material Dart.

Hello and World are not defined here and they shouldn't be

because here we're not trying to execute some commands

or run some code.

Instead, this should be human readable text.

And whenever you have text

that should not be interpreted as commands,

you must wrap it with those quotes

so that this is marked as text

that is, for example, meant to be read by humans

and not executed as code.

And with all those things,

we now have our first basic combination of widgets,

where we create the Text widget

and pass that to the MaterialApp widget,

which then in turn is passed to runApp.

And with that, if you now make sure

that you have an emulator up and running

and you start your application on that emulator,

either by going to Run, Run without debugging,

or by clicking this Run button here,

which is provided as a convenience by the code editor,

by Visual Studio Code,

you will see this Hello World text on this virtual device.

It looks ugly. It's definitely not a good looking app.

Also not a useful app, but it is a first step

and it's our first user interface built

with Flutter and widgets that's shown on the screen.

Now we can dive in deeper.