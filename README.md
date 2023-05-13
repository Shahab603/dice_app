# dice_app

A new Flutter project.

## 30 - Introducing Stateful Widgets
Now the image here did not change

despite the roll dice function being executed

because we're in a "statelesswidget".

And this is just one of two main ways

of creating widgets and it's the wrong approach

for widgets that should have internally changing data.

It is absolutely the kind of widget you should use

if you just have a widget that takes some input values

and then outputs some widgets.

But if you have a widget that has some data,

that can change internally

and where such data changes then should affect

the rendered UI, as it's the case here,

where the image we wanna display on the screen

in our own widget here depends

on this "activeDiceImage" variable.

If we have a scenario like this,

"statelesswidget" is the wrong choice.

We should instead create this as a "statefulWidget".

So what's the difference?

StatefulWidgets, as the name implies,

allow us to manage state inside of them.

And state simply is data that may change over time

and that should impact the rendered UI.

So if the data changes, the user interface should change.

We simply have different states

of our user interface, you could say.

So therefore here indeed the first step is

to convert this to a "statefulWidget"

to make sure that in here the data may change

though to be precise it would be a bit overkill

to change the entire gradient container

to a "statefulwidget", since the majority of this widget

actually does not depend on that changing data,

it's really just this part here, this image and the button.

Only these things work together to change the image.

The rest of the widget is pretty stable.

Therefore here it would actually be preferable

to break this widget up into two separate widgets.

One "statelessWidget", this one,

and one "statefulWidget"

which contains the image and the button.

And that is what I'll do here

to keep the overall code organized.

For that I'll add a new file here,

which I'll name, "dice_roller.dart"

because in there I want to create a widget

called "DiceRoller",

which will be that "statefulwidget" we're about to create.

Therefore "DiceRoller" should extend "StatefulWidget"

and in order to do that we here also must

import package Flutter and then material Dart.

So it's still the same import as before,

but now we extend "StatefulWidget" here.

Now this class here "DiceRoller",

which extends "StatefulWidget"

now is defined in a different way than we did it before

for the "statelessWidget".

Here we don't add a build method,

we do not do that if we have a "StatefulWidget".

Instead in here we must add a "createState" method.

So a method called "Createstate".

But just as with build,

we should add the "@override" annotation here.

Because that's basically another method

we're forced to implement because we're extending

"statefulWidget" here.

Now "createState"

Does not take a value here

but it actually returns a value.

It returns a State object.

Now that's a type built into Flutter, provided by Flutter.

And state like list earlier, is a generic value type.

Hence we have to add these angle brackets

to basically inform Dart,

which kind of state will be managed here.

And here it should be the state

for the "DiceRoller" class

for the Dice roller widget.

Therefore the value passed between those angle brackets

should be your class name,

"DiceRoller" in my case.

And in the body of this "createstate" method,

you then have to return such a state value.

So a value that has this type.

And this value is created with yet a never class.

When using "statefulWidget"

you will always work with two classes.

This is the first class here

and then you must add a second class

which typically should start with an underscore

and I'll get back to that in a second.

And then "DiceRollerstate".

So the convention is to pick up your widget class name

and append state at the end

and start with that underscore that leading underscore.

This underscore has a special meaning in Dart.

It means that this class will be private,

it will only be usable in this file.

Even if you import this file into another file

that other file will not be able to access

this state class here.

And the reason for that is that

this state class is really only meant to be used

internally by this "DiceRollerwidget" class here.

Now this state class here,

also must extend something

and that something is state again.

So this state value, though here again,

we have to embrace the fact

that this is a generic type

and add the angle brackets.

And here in between again,

we add our widget class name, "DiceRoller".

So we extend this state class,

adjusted for our widget class name here

and inside of this state class we now have to

add that good old build method again.

So "statefulWidgets" are in the end

split across two classes.

And the reason for that is simply that they're

managed in a special way internally by Flutter.

Flutter essentially requires these two classes

to be detached from each other.

Now the build method works

just as the build method in the "statefulwidget" though,

you add at override you return a widget,

so a value of type widget,

you will get this context parameter

and then here you return your widget

or widget combination, your widget tree.

In my case here, that means

that I want to return this column here.

So I'll select this column,

taking advantage of these nice annotations

which are shown in my code editor here

because of the flatter extension that we installed,

telling me where the column which it ends.

And I cut this from gradient container

and instead returned this here

in "DiceRollerstate" adding a semicolon at the end.

And with that we have this separate state object.

Some things are missing here,

we'll take care about them in a second.

But now here in "DiceRoller",

in this create state function,

we now call "DiceRollerstate"

with that leading underscore as a function.

So we basically execute the constructive function

of "DiceRollerstate".

We haven't added a constructive function here

but as you learned, Dart automatically adds one by default

in case you don't add one yourself.

Speaking of constructor functions, we should add one here

to our widget class, to set that key parameter again.

So to accept this named key parameter

and forward it to the super class, to "StatefulWidget".

That's the same as for "StatelessWidget".

And then we can also add const here.

We can do this even though

a "statefulwidget" by definition

is able to change internally,

because we have this class separation.

And internally Flutter in the end,

make sure that the state object can change

which is why we don't add a cons construct to that.

But the widget will be kept constant by Flutter,

it will take care of that for us.

So now we just need to make sure

that this variable and this "RollDice" function are there

and therefore we can go back to gradient container

and in there take this variable

and dysfunction and cut it from there.

Which then also allows us to bring back const here,

because we removed that variable.

Which also allows us in main Dart to bring back const here

and remove it in front of the colors.

But more importantly, we can go to "DiceRoller"

to the "dicerollerstate" here,

and there add both the variable and the "rolldice" function.

And we can get rid of the print statement here now.

With that we have the variable here

and this function and therefore now

we just have to make sure that we use the "dicerollerwidget"

which then is connected to that state,

inside of gradient container.

So there I'll now use "DiceRoller"

and instantiate this like this.

And of course to make sure that it is available here

we have to add an import,

because you always have to import what you use in a file.

So here I import from package, basics,

and then here Dice roller dot Dart.

If you save this and force a reload,

you should now be able to click this button

and change from a dice with two on it at the beginning,

two four, except for that it doesn't work.

So what's missing?

I mean we are using a "statefulWidget" after all.

And indeed you must use "Statefulwidget",

but that alone is not enough.

Of course here we have a variable which we changed,

but even that is not enough.

Instead by default, Flutter will simply

ignore that you change your variable,

that's good but that does not lead Flutter

to re-execute this build method

and reevaluate the UI that it should output.

And it must re-execute the build method

to pick up any changes to "activediceimage"

because in here we have the code for displaying the image

and if "activediceimage" changed,

the image on the screen will only be updated

if the build method executes again

so that all this code is reevaluated.

Because otherwise if build never executes again,

it's still this initial UI snapshot that will be output

that was based on the previous value of "activediceimage".

And that's a really important concept in programming,

in general actually, that you should understand.

If you are using a variable,

like "activediceimage" here in your code,

the code in which you use it,

so in this case the build method in which we use it,

does not magically re-execute just

because you changed the variable value

anywhere else in your code.

This is not happening here and this is not happening

in other programming languages either.

Instead, the value stored

in this "activediceimage" variable

is only considered unused if the code

where this variable is being used executes.

So for example, when this build method

executes for the first time

and the build method will execute for the first time

when this widget, this "Dicerollerwidget"

is rendered to the UI for the first time.

And that in turn will be the case

when the widget in which "Diceroller" is used

is being rendered, which ultimately all comes down

to the run app function in the main Dart file

because that's where the entire UI widget tree

starts being created.

So that's when the build method here

in "Diceroller" executes in the end,

and that's when Dart takes a look at "activediceimage"

and takes the currently stored path into account

for in this case, rendering an image on the screen.

And initially when this build method runs for the first time

because this widget is rendered for the first time

Dart therefore uses this "Dice-2" image

which is the initial value for "activediceimage".

So if you then change that variable value

and you want Dart and Flutter to update the UI

and take this latest variable value into account,

you must find some way of getting Flutter

to re-execute this build method of this widget

or of this widget's state in this case here.

So how do we get Flutter to re-execute build?

Well we have to call a special function,

in the place where we update a value

that is used inside of build

and that will lead to some different UI output.

We have to call the special "setstate" function

which is available inside of state-based classes.

So inside of "Dicerollerstate",

since we extend flutters state class here,

we have a set state function which we can call

that is provided by this state class provided by Flutter.

We have to call set state here inside of "rolldice"

and two "setstate", you must pass a function.

And here you typically pass an anonymous function

as I mentioned it earlier, related to the button.

Inside of this anonymous function,

you should now perform any updates to class variables,

to object variables, that should be reflected in the UI.

Because "setstate",

this function which is provided by Flutter,

in the end tells Flutter

that it should re-execute the build function

of this state in which you call "setstate".

And if after executing build,

Flutter determines that you now expect a different UI

than what you had before,

it'll go to the actual app UI

and updated in all the places where updates are needed.

So for example here

after setting active dice image to a different path,

when calling "setState", Flutter will re-execute build.

And indeed here where we use "activediceimage"

it will now see that a different kind of image

should be displayed on the screen.

Hence it will go to the real UI

that is active on the screen and update the image in there.

And with that, with set state added,

if you now save this and force a reload,

you will finally be able to click "rolldice",

and you see the image changed to a dice that shows us four,

and that's how you build "statefulwidgets"

and how you make sure that you can update the state

and such state changes are then also reflected

in the user interface.


