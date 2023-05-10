# dice_app

A new Flutter project.

## 21- Introducing Variables
So we learned about custom widgets,

a super important feature you're going to use

all the time when working with Flutter.

Now there's one thing you can do

with custom widgets that makes them even more powerful.

But before we can explore that thing

and before we then thereafter can come back

to this app and add more features to that,

we have to dive into variables.

So what are variables?

Variables are data containers.

And this feature exists

in basically all programming languages.

Because it turns out that in all programming languages,

you're working a lot with values.

Like also here, where in our styled text,

we have some text or basically everywhere else,

we have a bunch of widgets and configuration objects

which are of course also all values.

Now to understand variables,

let me go back to the gradient container here.

And here, we could say that maybe these alignments,

which of course also are values,

should not be stored here in this part of the code

which is hidden quite a bit inside of the widget tree.

But maybe we wanna define them

up here at the beginning of the file

so that if we ever want to change these alignments,

we can do it right here at the top of the file

without having to dive into our widget tree.

This is of course just a convenience thing in the end,

but the more complex your code and project gets,

the more little tweaks like this could help.

To do this, we could cut the value from down there

and instead store it in such a variable,

because variables, as you learned, are data containers.

In Dart, they are created with help of the var keyword,

then the equal sign operator,

the so-called assignment operator,

and then the value that should be stored,

for example, a string.

So here, if I wanna store this alignment value,

I could create a variable here outside of my class.

We can also create it inside of the class,

but for the moment, let's do it outside.

Then give it any name of your choice.

Like for example, startAlignment.

The name is up to you, but just as before with other names,

it should not be separated into multiple words.

Instead, words inside of words

should start with an uppercase character.

But unlike class names, the overall variable name

should start with a lowercase character.

So it should follow this naming pattern,

and the name should describe which kind of value

will be stored in that data container in that variable.

And then we assign the value with an equal sign,

in this case, alignment top left, for example.

So that's how we could define a variable.

We could then add a second variable,

and that is this end variable.

So therefore, I'll name this one endAlignment

and store alignment bottom right in there.

And with those two variables added,

we could use them down there

to assign startAlignment as a value to begin.

And here, endAlignment as a value to end.

Though here, you will notice that I'm now getting an error

that a value of type Null can't be assigned

to a parameter of type AlignmentGeometry.

This is a bit cryptic to understand though.

What does it mean?

Well, variables, when created with the var keyword,

which we're doing here, can actually be reassigned.

Here, I'm assigning an initial value,

but I could then change that value.

For example, here in the build method.

Here, I could set startAlignment to Alignment.center.

That's a core mechanism of variables created with var,

you can reassign them.

Now that's, in the end, where this error is coming from.

This Null part can be confusing,

but it actually also tells us that the const keyword

seems to be the problem,

that we might wanna remove this const keyword.

And here, it's referring to this const keyword

in front of BoxDecoration.

Since if we add const here,

it's also implicitly added to LinearGradient,

and that is the object that takes begin and end.

Since the values of these variables could be changed,

it's not guaranteed to be stable.

It's not guaranteed to be constant.

And that's exactly the kind of problem we're facing here

if we do have const in front of

LinearGradient or BoxDecoration.

We can't tell Dart that it can cache and reuse that value

because actually these variables are not locked in.

They could change potentially,

and therefore reusing this value would be unsafe

because Dart might accidentally reuse an outdated value,

which is why you can't use const here then.

You could add it in front of this list still

since these colors are indeed locked

in place here and hard coded here.

But that's the idea behind variables.

We simply have data containers that store values,

and we can define them once and then use them

multiple times wherever we want later in our code.

As long as that code has access to the variable,

which here in this case is the case.

