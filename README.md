# dice_app

A new Flutter project.

## 16 - Onwards to Custom: Why Do you need them?
So now that we get started

with some styling options,

I also wanna style this text.

And to be precise, I wanna make sure that this text is white

and maybe has a slightly bigger font size.

Of course, we're soon going to get rid of the text anyways,

but as a practice, let's see how we could style it.

And even though it will be a challenging practice

you also might wanna try this on your own.

See if you can find out how to change the text color

and font size of this text on your own.

Just as a hint, you won't need to wrap any widget around it.

Now here's a short pause for you to pause the video

and see if you can do this on your own.

If not, no problem.

After a few seconds, we'll implement it together.

So did you find a way of changing the color and font size?

If not, no problem.

This was challenging and we're just getting started here.

If you wanna style this text as mentioned

you don't need to wrap any extra widget.

Instead you just have to add some extra configuration

via some arguments.

So by adding a comma and then adding more arguments

to this text widget constructor function here.

And that's by the way, always a good way to start.

If you wanna style something or change some configuration

of some widget, the first step should always be to see

if there are some arguments

that you can set, that might help you.

For example, here, if I open this suggestion menu

after typing this comma and hitting control space,

I see that there is this style argument I can set,

which sounds like exactly what we need here.

And then as a next step

I get the suggestion here to add such a text style object

as it turns out, with help of the text style

constructor function.

And this also sounds like a good idea, so I'll take this

add a comma for formatting

and then text style takes more arguments.

For example, a color argument

which seems to set the text color since there also

would be a separate background color option.

So I'll choose color here.

And color then wants a color object again.

And we of course already learned about that.

We can create a color manually, for example

with this from A R G B function, or we use a built-in one

via the colors object here and the dot notation.

And here it's white, which I want.

So that should set the text color to white.

And regarding the text size, the font size there

conveniently is a font size argument I can set.

And this wants a value of type double.

And you learned a bit earlier

that this is in the end a number with a decimal place.

So here I can set this to 28, for example.

And you can even omit the decimal place, though

you can also set it, for example, also to set this to 28.5.

But here I'll set it to just 28.

Add another comma for formatting.

And if I now save this and reload,

I should have a white text that is a little bit bigger

and that indeed is the case.

And that's the practice solved.

That's how you can style text.

Something we'll do again and again throughout the course,

because text often needs to be styled in a certain way

but that stay afraid for the moment.

Now it's time to dive into building custom widgets.