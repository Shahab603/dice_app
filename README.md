# dice_app

A new Flutter project.

## 10 - Understanding Value Types

So we built our first basic widget app

that leads to this user interface.

And before we'll dive deeper into that

and make it a bit more pretty

and of course work towards our final application goal.

For this section, I wanna dive

into another crucial Dart feature

which is extremely important in which you must understand

in order to work with Flutter and Dart.

Because of course this section is not

about building the final app as quickly as possible,

but about learning all these important Flutter

and Dart fundamentals.

And one important fundamental Dart concept

that you must understand is the concept of types.

Because Dart is a so-called type-safe language,

which in the end means

that all values you are working with are of certain types.

For example, this hello world text is a so-called string.

If we had a number like 29 in our code,

it would be of type int.

MaterialApp is of type MaterialApp.

And actually there's not just one type per value

but instead, values are typically of multiple types.

For example, this hello world text is not just

of type string, but also of type object.

The number is not just of type int

but also of type num int of type object.

And MaterialApp for example, would be of type MaterialApp,

but also widget and also object.

So values can be of multiple types.

As you see, for example

all values are at least of type object,

and then they also have more specific types

and I'll get back to objects

and what's that all about a little bit later.

And those types are either built into Dart,

or provided by a third party package,

or provided by you when creating your own types,

which you typically do implicitly.

And in our application here, we're also working

with types in a lot of different places.

But why does this type feature even exist?

Why does it matter that this text is technically

of type string?

Which you by the way can also see if you hover over it

because then the code editor shows you some information

about the thing you hovered over,

and that always also includes the type of that value.

For example, here string for a MaterialApp

it's a bit harder to see

but here the type annotation would be this thing

in front of this MaterialApp function argument information.

But why does this type feature exist?

It exists and it's enforced by Dart to make sure

that you're never accidentally using the wrong type

in the wrong place.

For example, you might want to display a number

on the screen and therefore you could replace hello world

with that number.

But you would see that here in my code editor

I'm now getting an error.

And when I hover over this, I learn that here in the end

I can't provide a value of type int

which is that number type

which you just saw a couple of seconds ago on the slide

to a parameter that actually wants a string

so that wants some text.

Put in other terms, the text widget internally

as it was defined by the Flutter team only knows how to work

with string input values, with text input values.

It does not know how to work with numbers.

Of course, you could argue that displaying a number

on the screen should be possible, and it is

if you convert this to a string by wrapping it with quotes

which in the end is what those quotes really do,

they create a so-called string text.

But of course numbers are a special case.

What if it would pass a MaterialApp widget here?

Now, it might make more sense that text can't output this

because how should this MaterialApp widget,

which is all about creating the frame

for an application user interface,

how should that be output on the screen, right?

How should that be treated as text?

And to make sure that the text widget doesn't have to guess

what it should do with its input values

and how it should output those values as text,

the Flutter team built the text widget

simply such that it only accepts text,

that it only accepts strings to be precise.

And you can also see that if you hover over it

to get more information about it,

here you see that first argument

the only positional argument,

positional parameter wanted by the text widget

which is the parameter we're setting with that first value.

We're passing between those parentheses.

And here you see this annotation in front of data.

Data is simply the parameter name, but the annotation

in front of it is the type that's expected

for this parameter.

And if you would create a custom function

which you wanna use somewhere else in your application,

you could also add such type annotations

to make sure that you for example, only accept numbers

so-called integers if you use the int value here.

So that for example, if you would pass some text here

to this function, you would get an error

because your function might not know what to do with text.

It wants numbers, to add them as numbers,

not to combine them as text.

That's why this type feature exists.

It's there to ensure that you as a developer can be clear

about which kind of values you wanna accept,

and which kind of values you don't want to accept.

For example, the runApp function,

which we're using in our code,

wants a widget as its first and only argument.

So a value of type widget.

And it turns out that MaterialApp, which is in the end,

the value we are passing to runApp is such a widget.

And here for the text widget

we should of course go back to a real text.

So that's the idea behind types.

And in Dart types are everywhere,

not just in the parameter lists of functions.

For example, this thing in front of main,

this white thing is also type.

It's the so-called return value type of the main function.

But that is something we'll get back to later

in the course once we actually have functions

that do return something.

Now, as mentioned, you can build your own types,

and you also get many types by third party packages,

but Dart also ships with many built-in core types.

Of course, you might not understand all of them just yet.

You will see all of those

and many more inaction throughout this course though.

For the moment, the most important takeaway

is that this types feature exists so that you can't work

with the wrong types in the wrong places.