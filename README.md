# dice_app

A new Flutter project.

## 09 - Building More Complex Widget Tree

Now, of course this is ugly as mentioned.

So how could we make it more beautiful?

Well, to make it more beautiful,

we have to add more widgets.

At the moment we only have a very basic

combination of widgets.

One widget that will help us a lot

with making this look better is another built in widget

the Scaffold widget.

Now you can always of course read about widgets

in the official documentation

and there you also learn how to use a widget,

but you're watching this course

so that you don't have to do that,

though that of course is always a great backup resource.

But the Scaffold widget is a widget

that in the end helps us with setting up

a good looking screen in our app.

The material app widget is the root widget

which is important for setting up the overall app.

But many apps of course consist of multiple screens

and those screens also must be set up.

And even if you have just one screen in the app,

as we have it here

this screen must be set up to have,

for example, a nice background color

to enforce some basic styling

onto its child widgets and so on.

So therefore here we wanna wrap text

with the Scaffold widget

because Scaffold must be inside of material app,

but should be wrapped around the widgets

that belong to a screen.

Now to wrap text with Scaffold,

we can of course type Scaffold here and execute this

and then grab text here, this text widget,

with its text content and then pass it to Scaffold,

though Scaffold now again wants a named argument.

In case you're wondering how I know

which widget wants which kind of arguments,

you can hover over a widget

to learn about the accepted arguments here

in this info window that opens up.

You can also learn about supported arguments here

in the official documentation, but of course for the moment

I will simply tell you which arguments can be passed where

and you will then automatically memorize these things

as you gain more experience with Flutter.

So for Scaffold,

it's actually a body argument which we should set here.

And I'm also getting some auto completion here

whilst typing this, which of course helps a lot.

And the value for body then is the widget

that should be shown inside of this Scaffold widget.

So with that, if I save this,

this should reload automatically.

If it doesn't, you can press this refresh button here

in this panel, which opened up when you started the app

and now it should update.

And you see it looks much better.

We got the white background

the Hello World text looks nicer,

even though it's still of course hidden

in the top left corner,

but we already gained a lot by adding this widget.

It's of course not enough though.

Instead it would be nice if Hello World

would be kind of in the middle here,

if it would be centered on the screen.

And that can be achieved with help of another widget

which of course also can be found in the widget catalog

in the layout category, since I wanna center my text here

so it's a lay outing action I wanna perform.

And there, it's the Center widget that can help us with,

well, centering widgets.

For that, we need to wrap text with yet another widget.

And that is something you'll do a lot

when writing flutter code.

You'll build these complex widget trees

as I called them before,

where you have widgets inside of widgets, inside of widgets.

So here we wanna wrap text with yet another widget

and for that we could manually add it as before,

but you can also right click on code,

here on this text widget,

and then choose this refactor action

that's suggested by Visual Studio Code.

You can of course also use the shortcut

that's suggested for that.

And if you click that, you get some refactoring suggestions.

And refactoring in programming,

simply is the process of changing your existing code.

And here you get some smart actions suggested.

For example, you can choose wrap with widget

to get some help with wrapping this with a widget,

but you even get a wrap with center suggestion here,

which you can pick by clicking on it

or by selecting it and hitting enter.

And this will automatically create the Center widget

and pass the text widget to center

to be precise to the named child argument

of the Center widget.

Now, of course, things are getting quite unreadable here.

This is becoming a super long line here

and this is still a simple widget tree.

And therefore, of course

you typically wanna structure this code a bit differently

to make it easier to read and to maintain,

because even this basic widget combination

is already getting too long here.

Now, to make this easier to read and more structured,

Dart offers a nice trick

or actually recommended pattern or approach

to help with formatting widget trees.

For that, you should add a comma

after every closing parenthesis here,

except for the last one where you need a semicolon.

And if you do that, you can run the format document command

in visual studio code, or use the shortcut for that

to auto format your code,

which is something I do a lot when writing code in general.

And if you hit this shortcut, you see the code changes,

it's formatted differently,

and now it's way easier to understand this widget tree

because now you have some nice indentation

that shows you which widget is inside of which other widget.

And this widget tree, this code is now way easier to read

and understand.

And this is something you can do

in many programming languages, definitely in Dart.

As you can see, you can split code across multiple lines

and you then don't have semicolons at the end of those lines

because this in the end here is still one single instruction

just split across multiple lines.

Now, you can't split it at arbitrary points,

for example, not in the middle of a word,

in the middle of material app, that would fail,

but you can split it here

after these opening parenthesis, for example,

and also after such a closing parenthesis

and such a comma here,

or even in front of the comma if you wanted to.

But this auto formatting shortcut

will basically do that for you.

And by simply adding these commas

after all these closing parentheses,

you are giving the code editor in the end

a signal where to best split this code

when using this auto formatting shortcut

because it will then simply do this after every comma here.

And since you will build

a lot of widget trees when building Flutter apps,

and of course also way more complex widget trees

with way more widgets than we have it here,

it is absolutely a recommended pattern

to always add these commas after your closing parenthesis

and then use this auto formatting shortcut

to make sure your code is structured

and easy to read and understand.

And if you save this now,

it again should update automatically, or if it doesn't,

as it's the case for me, update it manually.

And now you see that Hello World

is centered in the middle of this screen.

So by adding these two built-in widgets,

Scaffold and Center, we again improved the app

and we're making good progress

towards our goal of building our first custom Flutter app.