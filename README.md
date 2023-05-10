# dice_app

A new Flutter project.

## 12 - Working with "Configuration Objects" (Non-Widget Objects)

So knowing about this object's concept

is crucial because all values are objects

in the end as you learned.

But here, my goal is not to set this just

to some purple background color.

Instead, I wanted to have a nice gradient.

Now, this can't be achieved with background color

because that wants a single color

and Scaffold also has no other argument

that we could set that would allow us

to add a gradient background.

Instead, what we can do here

is we can add another new widget

between Scaffold and Center

so that it wraps center and therefore, implicitly also text

by right clicking on Center and refactoring this.

And here we wanna wrap this with a container,

which is another widget provided by Flutter.

And container is a widget that's very useful

for configuring styling and layout settings.

Now here, after adding container,

I get some reds squiggly lines.

And if we hover over that, we learned

that we should remove const

because that seems to be responsible

for these red squiggly lines.

And indeed, if you remove consy here in front

of MaterialApp, they go away and you can now re-add const

in front of center.

Container is simply a widget provided

by Flutter that doesn't support setting it to const

and therefore, you also can't set some parent widget

that's higher up in this widget tree to const.

It is what it is

but your IDE clearly tells you where you can

and can't add cons.

So that's pretty good.

But of course, we got more blue squiggly lines here now.

But the reason for that simply is that at the moment,

Dart and our code editor thinks

that we're unnecessarily using container and we do.

If we don't configure anything, it's a useless wrapper

because if you save this and you reload,

you will see that nothing changes

about the app except for the background color

since I removed the background color on Scaffold

but nothing else changes.

But of course, our plan is not to do nothing here.

Instead, container now also gives you many useful arguments

that you can set.

For example, it provides a decoration argument

and this allows you to add various kinds of well, decoration

to the container and therefore also to the child elements

inside of that container.

Now, decoration wants a decoration argument, so a argument

of type decoration and such a value can be created,

for example, with the built-in

BoxDecoration constructor function.

There actually also is a decoration option here

in this suggestions menu,

but this is actually not the right thing to use here.

Indeed, you can't use it if you try to use it

because it's a so-called abstract class.

And we'll learn more about classes later.

For the moment, it's enough to know that you can't use that

but you can use this BoxDecoration constructor function

and this will then also give you such a decoration object.

Of course, it will give you a BoxDecoration object

but as you learned, values can be of multiple types

and BoxDecoration objects are also of type decoration,

just as material app is not just of type material app

but also of type widget.

This might all sound confusing

but you're just learning it here.

You're just getting started with it.

You will get a lot of experience

with that over time as you're using all these features.

Now, this BoxDecoration Constructor function,

which we're calling here

to build such a BoxDecoration object,

then also supports various arguments that can be set.

For example, the gradient argument,

which sounds just about right for what we're planning to do

because our goal is to add a gradient here.

So the gradient argument can be set here

and that then wants a value of type gradient.

Now, there are different ways of creating gradients.

For example, a radial gradient

or what I wanna do here, a linear gradient.

This is another constructor function

that creates a linear gradient, which is also

of type gradient and which therefore is a value we can set

for this gradient argument.

And this linear gradient constructor function

wants even more arguments.

And what we're doing here is quite typical

for Flutter development.

You often end up nesting widgets

and/or configuration objects into each other

so that they can work together

and give you the overall desired user interface.

Don't forget to add those commas

after all the closing parentheses to make sure

that your code is styled in a readable way

so that you never lose track

of how these things are related.

And here for a linear gradient, there are again,

more things we can set.

Most importantly, this colors thing here,

this colors argument

and this colors argument now wants a special kind of value.

