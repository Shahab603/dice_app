# dice_app

A new Flutter project.

## 27 - Adding Buttons & using Functions As Values 
Now having this dice image here is nice,

but we of course also want to have a button below that

which can be pressed to roll the dice.

And therefore we should of course add such a button.

To do that, it's no longer enough

to just have a single child in this center widget,

but instead we need multiple widgets here.

Now, center only has this child argument, though.

I mean it has other arguments as well

but those don't take any widgets at all.

So it only takes one single widget.

So what can we do now

if we actually wanna provide multiple widgets

as child widgets here?

Well, we need another widget in between, the column widget.

Which is another key widget

that you will be using a lot when working with Flutter.

The column widget exists to allow you

to render multiple widgets,

multiple children above each other.

There also is a row widget,

which would do the same,

but next to each other horizontally.

Here I want to have widgets above each other vertically

and therefore column is the right choice.

Now the children argument,

which can be set here, then takes a list.

So we need opening and closing square brackets,

and it takes a list of widgets.

So therefore here we can now take our image

and move that into that list here.

And then below that image we can display our button.

Now of course, buttons are a very common type of widget

and indeed Flutter supports three different main buttons.

It has the elevated button here

for displaying a button that has a background color

and a slight shadow.

It has the outlined button

for displaying a button that has no background color

but a border.

And it has the text button

for displaying a button that is only some pressable text.

And that's the kind of button I want to display here,

though of course you can play around with that

and also give other buttons a try.

Now, when I use auto completion here,

so when I hit tap after selecting text button,

I automatically get two named arguments added here,

child and onPressed.

Now, child is the simpler one.

Child simply wants another widget,

which is wrapped inside of that button.

And typically that's a text widget which holds the text

that should be shown on the button.

Because, of course, this text button should show some text.

Otherwise you wouldn't see anything.

So here, this could, for example, be roll dice.

Now I get some blue squiggly lines here,

because here we can add const

to allow for some optional caching.

But what is this onPressed argument all about now?

Well, onPressed actually wants a function,

or null as a value, and that is something new.

Up to this point,

we worked with a lot of different values.

With text, with numbers but also of course

with many objects and widgets.

But we never used functions as values

but you can do that in Dart.

Functions in Dart are also just objects.

So if you define a function, you can pass a function

as a value to arguments that want a function.

And here for onPressed, you have two main options.

Option one is that you define a function just in place.

This is done like this by adding

opening and closing parentheses

and then opening and closing curly braces.

This is a so-called anonymous function.

It doesn't have a name like clickHandler

or anything like that, and it doesn't want a name.

Instead, this function is defined here

in this place where a function is needed

so that it's provided as a value to onPressed.

This function is then executed,

called, internally by TextButton

when it registers a click on the button.

So this function is only used here,

can't be used anywhere else,

and that's why it doesn't have a name.

But between those curly braces

you can define any code you want

that should be executed when this function is called.

So when this button is pressed.

That's option one.

Option two is that you define a method,

for example, here,

after all our constructors and these variables,

and that could be a method called rollDice.

As you always did, by providing a name

and then also a return value,

which in this case should be void

because onPressed wants a function that returns nothing.

So therefore here you should have void,

then your function name,

and then here whatever code you want to execute.

And now you can use that function name

and use that as a argument value here.

So you don't execute the function here,

you don't add parenthesis,

you just use the function name to basically pass a pointer

to that function as a value to onPressed.

With that onPressed knows where to find this function.

And internally, textButton will execute

that function here when the button is pressed.

Now, I personally typically prefer this approach

of having a separate function

that's then passed as a pointer,

so to say, by using the function name.

But you could also use this anonymous function instead.

But here I'll go for the separate function.

And now here inside of rollDice,

we can do whatever we want to do,

when this button is pressed.

If we save everything and reload,

we now see this button here.

It looks a bit strange.

It's at the top and the button styling isn't final,

but as you can see, it can be clicked.

Now it's time to fix the styling

and then do something when the buttons clicked.

