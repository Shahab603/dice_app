# dice_app

A new Flutter project.

## 29 - How Not to Build Interactive Widget 
So now that we got the styling right,

it's time to make sure that something happens

when this button is pressed.

For that, of course, we have this rollDice function,

which we connected, but in there, we're not doing anything.

Now, for a start, let's simply say that in there,

we want to switch this image from dice-2,

or whatever you used as a default image here,

to, let's say, dice-4.

So this should switch as we click this button.

To achieve this, we could add a variable to this class,

a real variable that can be changed

because now we do want to change things.

We could add a variable with the var keyword,

and name this our activeDiceImage,

anything like that.

That could be our name here.

Now, of course, this also should have some initial value.

So we can set an initial value here.

We don't have to do this in a uninitialized way.

We can instead initialize this here.

And for example, set this to this image path here.

That could be what we want to do as a start.

Now, with that, I can no longer add const here

because I brought back a variable,

and if we have a variable in there,

this is not a const class anymore,

we can't create const and objects with it anymore,

that could be stored and reused from memory,

because now the object can change internally

because we have that variable, which could change,

and which we indeed intend to change.

And we can ignore these blue squiggly lines

and this message here, for the moment.

So we have this variable, and here in rollDice,

I then want to set activeDiceImage

to, let's say, the same path but with dice-4.png.

So that's not the goal.

We have this variable.

We're changing this variable here then.

And we can then use this variable down here

instead of having this hard-coded path.

And this, of course, also is a great example,

showing us why we might want to use variables

in some situations.

Because, now, we really do want to have

one of the same data container, which we can reference here,

which will hold different values based on the circumstances.

This value here initially, and this value after clicking.

And if we save that and, in main.dart,

actually remove const here,

because we had to remove const from GradientContainer,

we can add it in front of these colors, though.

But if we do that and make these changes,

which we just discussed, to GradientContainer,

save this and reload,

we got this.

But if I click this,

nothing happens.

So maybe this function isn't executing right.

To find out if it is,

we can add print here.

A built-in command provided by Dart,

which we can use for outputting some information

in the Debug Console,

which is a console we, as a developer, can have a look at

whilst we're testing this app.

So here we could output some text,

"Changing image," something like this.

If we add this, we just have to go to View,

Appearance, Panel.

And here in this panel, we find the Debug Console,

which would print anything print outputs here,

and some additional statistics,

which are not important for us right now.

If I now restart this,

and we go back and I click Roll Dice once,

I can see that Changing image was locked

in the Debug Console.

So, clearly, that code in the rollDice executed.

Nonetheless,

the image here didn't change.

Why?