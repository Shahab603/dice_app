# dice_app

A new Flutter project.

## Understanding Widgets

So what are arguments?

Well, functions can be defined

like the main function to take no input values,

but as you can see in the Flutter source code,

they can also be defined such

that they do expect some input values,

and that's the part between those parentheses.

Here you can specify a list of input values that are needed

by the function to work correctly.

Some functions don't need any input, like main,

other functions do.

And these input values are called parameters or arguments.

Technically, they're called parameters

when we talk about them

when defining a function

and arguments when we talk about them

when calling a function,

but I will simply use these terms interchangeably

in this course.

So runApp needs one argument, one input value,

to display something on the screen.

And this should make a lot of sense

because like this, at the moment,

how would runApp know what to display on the screen?

Well, the input value it needs

is the content that should be shown on the screen.

So the user interface,

it should show on the screen.

And for that, runApp needs a so-called widget

or widget tree as a value

because Flutter user interfaces are built with widgets.

When building a Flutter app,

you don't use some visual drag-and-drop editor.

Instead, you build your user interface in code

by using so-called widgets.

You typically combine many widgets with each other.

You nest those widgets into each other,

as you will see over the next lectures,

to build a user interface.

And since you end up nesting widgets into each other,

you will actually end up with a so-called widget tree

where you have some root widget at the top,

then maybe a child widget with another child widget,

which then may hold multiple child widgets simply depending

on which kind of user interface you're building.

And of course, all these words here,

all these widgets on this slide

don't tell you anything just yet,

but that will of course change

over the next lectures and sections.

So Flutter user interfaces are created

by combining and nesting widgets.

For example, by adding a text widget,

which is something Flutter gives you

to display text on the screen

inside of a button widget to have a button with some text.

And Flutter provides many built-in widgets,

which you can use in your code,

like buttons, form inputs, layout widgets,

but you can also build custom widgets.

And of course, we will also do that actually quite a lot

throughout this course as well.

So runApp needs a widget

or a combination of widget,

a widget tree, as I mentioned.

So of course, the question is which widget,

and how do we add a widget in code?