# dice_app

A new Flutter project.

## 11 - COnfiguring Widgets & Understanding Objects

So now that we know about types,

it's time to come back to our application code here

and continue working on this application.

And I would say one next step that makes a lot of sense

is to make this look a bit nicer here,

because, to be honest, right now,

this application is really boring.

And for that, I'd like to change the background color

from white to a nice gradient,

and also change how this texture looks like

so that it looks a bit nicer, a bit more fancy.

Now let's start with the background color.

For this, we can go to this Scaffold widget.

And besides setting the body argument there to the widget

that should be displayed inside of the Scaffold,

we can also set one of the many other arguments

supported by Scaffold,

because most widgets allow you

to pass values to different arguments.

You'll almost always have at least one argument,

like body or child, that wants another widget,

which then is included in the wrapping widget,

in the outer widget.

But you also often have other arguments

that don't want widgets,

but that instead allow you to configure

and/or style this widget.

And for example, Scaffold, if you add a new line in there

and press Control Space,

it supports a broad variety of arguments.

For example, the backgroundColor argument.

And as you might guess, the backgroundColor argument

allows you to set the background color of this screen

that's created by Scaffold.

Now, backgroundColor wants a value of type color.

Now that you learn about types,

you know that that thing in front of the parameter name

is the type definition.

And this wants a color,

or actually, it wants a color, question mark.

Well, this question mark simply means

that we can either set a value of type color or nothing,

so that this may be null, as it's called.

We can set this to null, which is a special kind of value

and type supported by Dart,

which in this case is pretty much the same

as not setting background color at all.

But if we do want to set it to some non null value,

so to a value that has some visual effect,

it must be a value of type color.

Now, such a color value can be created

with the built-in color, class, or constructor function.

Now, keep in mind that I mentioned before

that MaterialApp, Scaffold, Center and Text

are of course, widgets,

but that technically what we're calling here,

like functions in our code

are so-called constructor functions.

And I'll get back to the concept of constructor function

and related to that classes a little bit later.

Here, we can use the Color constructor function

to create a color thing.

Though, if you are just getting started

with colors in Flutter projects,

it's typically easier to use the special Colors thing,

and then there, you don't add parenthesis,

but instead you use a dot

to access a list of predefined colors.

And here, you see a long list of predefined colors

which you can use, like for example, deep purple, like that.

And if you save that and force a reload,

you will see that color here

as a background for this screen.

And this already looks nicer

than the white background we had before,

at least in my opinion,

but it's not the final styling I wanna have here.

But what is this thing here now?

Well, if you hover over deepPurple,

you for one get a color picker,

which you could use to pick a color more conveniently,

which is pretty nice.

You will see that if you do that though,

it changes from colors.something to color dot,

and then some function that's being executed here

to which some values are passed.

In the end, this here is a function

provided by this color thing here,

which is provided by Flutter in the end,

which simply allows you to create a color

by mixing red, green, and blue colors and an alpha channel

that controls the transparency of the color.

So that's simply a way of creating a color

by mixing three different colors.

Though of course, the easiest way of using this

and doing this is to use this color picker,

which opens here in Visual Studio Code if you hover over it.

But of course, that doesn't answer the question

what this here is in the end.

Well, if you scroll down from that color picker,

you in the end see that this from a,r,g,b function here,

which it is, gives you a value of type color,

which makes sense, because background color wanted a value

of type color, of course.

So we got another type here, not a type built into Dart,

but instead a type provided by Flutter.

And what this in the end is,

like all values as you learned before, is an object.

Widgets in Flutter are also just objects in the end.

They are objects,

and objects are the base value in Dart,

all other values are also objects in the end,

and objects are simply data structures in memory.

So that's simply how Dart saves your values in memory

on the device on which your application is running.

Now, objects are a core concept in Dart,

because as mentioned,

all your values are objects in the end.

And there are a simpler objects

like this text, this Hello World text,

but also more complex objects like this Color object

or your widget objects, like MaterialApp or Scaffold.

But in the end, all these are simply data structures

in memory that are managed by Dart,

and these data structures can also work together.

And for example, backgroundColor wants a Color object,

so that behind the scenes,

the Scaffold widget object

is able to reach out to that Color object

and use that color information

that's stored in that color object

to make the background color of this user interface purple.

So it's all objects.

Widgets are also just objects,

just special kinds of objects in the world of Flutter,

if you wanna call it like this,

but all these objects are working together

to bring the final user interface onto the screen.

And I'm really emphasizing this,

because when building apps with Flutter,

you will always have many objects work together.

You, for example, have widgets

that are nested inside of other widgets,

but you also have configuration objects,

like this Color object,

which then, for example, could be used by your widgets.

And that's how we could add a background color.

Though, it's of course not the final background color

I wanna have here.

But using this helped us get started

and become aware of the important concept

of objects in Dart applications.