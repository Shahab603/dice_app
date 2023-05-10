# dice_app

A new Flutter project.

## 14 - How to configure Widgets & Objects

So we added this gradient.

I'm not totally happy with it yet though.

I'm quite content with the colors.

But by default, that gradient goes from left to right.

Now I'd like to have it go

from the top left to the bottom right,

and this is something that can be changed

by adding more arguments to linear gradient.

Besides setting the colors here,

you can also set the begin

and end settings amongst other settings

with which you can, of course, also play around.

Now, begin wants a value of type AlignmentGeometry,

which can conveniently be set

with help of the Alignment object here.

Now, you can set this to X and Y coordinates

or you don't use the parenthesis here

but instead the dot notation here

to access some predefined values again.

And here you have many predefined values,

like center, centerLeft and so on.

And you, for example, also have topLeft,

which is where I want my gradient to begin.

And I'll set the end argument to Alignment.bottomRight.

Also add a comma here for proper code formatting.

With that, if we save this and make sure this is applied,

the gradient now indeed goes from top left to bottom right.

And in case you're wondering how I always know

how to create the values that are wanted

by end and begin, for example.

So how I, for example, know about this alignment thing here

with those predefined values,

there are a couple of ways of finding out.

For one, of course, you learn it in this course

and you will learn

about many common super important widgets

and configuration objects

and options throughout this course.

So that's a great start.

But in addition, if you must provide a value

and you have no value yet,

you can also always press Control + space

to get some suggestions.

And typically the first or second

or third suggestion is already a suggestion that helps you

because this suggestion menu here is pretty smart.

And here for setting the alignment,

it even shows me these predefined alignments I could choose,

like for example, bottom right.

So that's pretty good.

But of course, you can also always dive

into the official documentation.

For example, for a searching for Flutter

and then the name of the widget you're using.

This will lead you

to an article in the official documentation.

And there you can also learn more about using this widget

or this configuration object or whatever you have here.

And you also often find some examples here

or a more detailed description

of the constructor and the AlignmentGeometry object.

And then here, for example, you would get some hint

about using the alignment thing, which we did actually use.

So that's how you can learn more about this.

But again, you will see many common widgets

and configuration objects

and options throughout this course.

