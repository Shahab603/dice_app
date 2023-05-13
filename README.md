# dice_app

A new Flutter project.

## 31 - Generating Random Numbers
So we now added our Stateful widget.

And with that, we can click this button

to change this dice here, the dice image.

But of course at the moment, we can only click it once.

I mean we can click it more often, but we always set it

to this image that shows us a dice roll of four.

And that's ultimately not the goal here.

Instead, we wanna generate a random value

between one and six, and update the image appropriately.

Now, to get there,

we'll have to do a couple of things, and most importantly,

we have to generate that random number.

Now that can be achieved with help of a feature

provided by Dart, which we have to import though.

We have to add a import where we import something

directly from Dart and there from the math sub package.

So this is now not a third party package that would have to

be registered in the pubspec.yaml file.

Instead, this is really from Dart itself.

But a Dart feature that is not available

in all Dart files automatically out of the box,

but which instead has to be unlocked in a file

by adding this import.

Here, we want to use a math feature provided by Dart.

To be precise here in rollDice,

I now want to use the random constructor function,

which is provided by Dart's math package,

to create an object that has various methods

that help us with the generation

of random values, random numbers.

Here, for example, the nextInt method.

NextInt can be called to generate a random integer.

And for that, nextInt actually wants an input,

an argument, which is the maximum,

the highest possible integer that should be generated.

Though that value, as we can read here,

will actually be excluded.

So if you pass in a value of 10, for example,

we would generate a random number

which is greater or equal to zero and smaller than 10.

So here, if I wanna generate a number between one and six,

I can pass in six,

and that would give me a value between zero and five.

So to make sure that it's between one and six instead,

I simply have to add one here,

and that would then give me a number between one and six.

So that generates such a random value,

and we could now use that random value

and store it in a variable called diceRoll, for example,

to then dynamically set this string here,

this path to an image.

So in the end, what I wanna do here

is I want to replace this number,

because my images are all named

dice one, dice two, and so on.

So I just need to replace this number here

with my number which is between one and six.

And it must be between one and six

because I only have images for one to six.

Now, getting such a number here into a string

is pretty easy with Dart because it gives us a nice syntax,

a nice feature that allows us

to kind of inject values into strings.

We can add a dollar sign here,

followed by the variable name that holds the value

that we wanna inject into the string.

So now this will dynamically construct a path

which is assets/images/dice, dash,

and then whichever number is stored inside of diceRoll.

That's what this special syntax does.

It injects the diceRoll value into this string.

So when we set activeDiceImage to an image path,

this path will include the actual number

that was generated here.

That's one way of doing this.

However, we don't actually even have to store

the entire path as state here.

Instead, we could get rid

of that activeDiceImage variable here,

and instead, just add a new variable that could be

named currentDiceRoll, which initially maybe is two.

And then that's the variable I wanna set here in setState.

And I wanna set currentDiceRoll here

equal to my diceRoll variable here.

Or actually make this a bit shorter,

get rid of that extra variable,

and just generate my random number here,

and use it here to then update currentDiceRoll

inside of setState.

So now I just manage the dice roll number as state,

and that allows me to then grab this path

which sets the dice roll dynamically,

or which injects that dice roll and use that down here.

And instead of using diceRoll here,

I now want to use this currentDiceRoll variable,

which we do update inside of setState.

It's up to you which approach you prefer,

but this keeps our state a bit leaner,

a bit easier to understand

since we're just managing a number here.

And then we dynamically derive the actual path

based on that state value.

So based on that number, whenever build is executed.

And as you learned,

build will execute when we call setState here.

With that, if we save everything and force a reload,

we should be able to click this

and generate different dice rolls.

Now of course,

you might sometimes roll the same number twice,

so simply click this a couple of times

to see some differences on the screen.

So that's our different dice rolls

showing up on the screen here as we click this button.

But the current approach still isn't optimal

because at the moment, I'm always creating

a new random object here whenever rollDice is executed.

And whilst this works,

it's a bit redundant because technically this means

that every time rollDice is executed,

so every time we click the button here,

a new random object is created and stored in memory.

So in the memory of the device that is running our app,

and the old random object that was created there before

will be thrown away.

Now thankfully it will be thrown away,

so therefore at least we don't occupy

the entire memory at some point.

But still, that is some redundant object creation

and deletion in memory, which is not a problem

for this basic app, but something you might wanna avoid.

And of course, my goal with this course is not

to teach you any way, but if possible,

the best possible way of solving a certain problem.

And therefore here, it would be better

to cut this random object,

and instead create a new final value here,

Randomizer could be the name,

which stores this random object, which we then use here.

And actually, this doesn't even have to be

inside of our state class here.

This could even be defined outside of it,

maybe here right below the imports,

because it's totally fine if this is only created once

when this code file executes for the first time,

and doesn't have to be reexecuted

every time the state object is created.

Technically here, the state object shouldn't be recreated,

but still there is no need to keep the randomizer

inside of this class here in this application.

We can instead set it up

as a globally available final data container

here in this code file, by adding it right below the imports

and then still referencing it by name down there.

And with that, we should have the same result as before,

that we can click this button and change the image,

but now it's a bit more efficient.