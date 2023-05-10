# dice_app

A new Flutter project.

## 05-Using a first widget and passing value to a function 

Now when it comes to the question

which widget should be used,

you can also search for Flutter widget catalog

and you'll find an official documentation page

which gives you various widget categories,

which you can browse to learn

about some of the most important widgets offered by Flutter.

So the different building blocks you can use in your code.

For example, to display images, to display text,

and do many other things as well.

Now, please don't go to this page

and learn all these widgets by heart now.

That's not how you will learn how to build Flutter apps.

Instead, you will learn about all the important widgets

step-by-step throughout the course, and you will see that

in the end you will always end up using

the same 10 or 20 core widgets

with some occasional niche widgets used

for specific use cases.

But you will learn how to use them,

and you will learn which widgets are important

simply by building apps,

and simply by following along with this course.

Nonetheless, it's good to know that this page exists.

And here from this page, from the Flutter widget catalog,

we have to use at least two core widgets offered by Flutter

to have a basic user interface.

And the first widget which we want to use for that

which we therefore passed to run app

is the material app widget written like this.

Capital M at the beginning,

and then capital A inside of the word.

This is one of the widgets provided by Flutter,

and we have access to it here because of this import.

So the same package that in the end gave us access

to runApp also gives us access

to all these core widgets like MaterialApp.

Now you then use a widget in code,

you create a widget, so to say,

by adding opening and closing parentheses

after the widget name.

So MaterialApp is the widget name

and this now creates the widget.

Now this of course looks a bit like calling a function.

It looks like what we did with runApp before, right?

We also called that like this initially.

Now here we're calling MaterialApp.

And to some extent it is like a function,

but it's actually a so-called clause,

or constructor function of a class to be precise.

And I'll get back to classes

and constructor functions later.

For the moment, it's just important to realize

that we can create a widget like this in our code.

In this case, a built-in widget provided by Flutter.

And MaterialApp is a core widget, which you will use

in almost all Flutter apps you're going to build,

because this is the main widget which you use

as a starting point,

so which you pass to runApp in the end,

because this main widget does a lot of behind the scenes

set up work for your user interface.

So it ensures that the interface can be shown correctly

on the screen.

It does a lot of important

behind the scenes configuration stuff.

On its own it doesn't show anything on the screen, though.

Instead you need to pass another argument

to MaterialApp to show something on the screen.

And that's now really important to understand.

When calling MaterialApp like this,

we are creating such a app widget.

So we're in the end telling Flutter

to display this MaterialApp widget on the screen.

This part of the ui.

So the material app widget thing,

whatever it may be that is being created here,

is the value that's passed to runApp.

So widget is passed as a value to this parameter thing,

this input value that is expected by runApp.

And by the way, I will get back

to what this widget thing here in front

of this app parameter means in the near future.

And that is something you'll see a lot in this course

and you'll do a lot in programming in general.

When you define functions, so custom commands,

or you are using functions defined by other people,

like here where runApp is defined by the Flutter team,

many of those functions will take input values

to work correctly internally.

Here, this app input value is used inside

of that run app function thereafter.

It's not important to understand what exactly happens

with it here, but it is used internally.

So being able to pass input values to functions

so that those functions can then do something

with those input values is a crucial part

of programming in general.

And here it's this MaterialApp widget thing

that's passed as an input value to runApp.

