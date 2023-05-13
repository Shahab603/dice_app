# dice_app

A new Flutter project.

## 28 - Styling Buttons & Working with Padding
So let's fix the styling of this here.

For that, I'd like to make sure that it's back

in the center, and this button also should look differently.

Now, regarding the center part,

it's of course strange that it's not in the center,

because it's still inside of that center widget.

But here it's important to understand

that this column widget, by default

takes all the available vertical space.

It is indeed centered horizontally, as you can see.

It's in the center regarding that.

But vertically, column simply takes the entire

available space, and therefore, there of course

is simply no way of centering it vertically.

So in order to make sure that this is centered vertically,

we must make sure that column does not take

the entire vertical space.

And this can be done with help

of another argument that can be set on column.

And that's the main axis size.

The main axis for a column is simply the vertical axis,

and here you got two main options, main axis size dot min,

and main exercise dot max.

These are two predefined values, which you can use

and the default is max, to take as much space as possible

here we therefore want min.

And with that, if you save this,

this is centered vertically.

Now for the styling of the button,

we of course also want to change this, and that can be done,

by adding the style argument to the text button.

And actually you should move that in front of child,

not because you technically need to,

but because that is one of the patterns recommended,

by Flutter to always keep your widget arguments last.

Now style here wants a button style value.

And the easiest way of creating this for a text button,

is to use text, button, style from.

That's the end of function, to find on this text button

which returns a button style object.

And style from now takes various arguments,

which you can use to override the default styling.

For example, you can set the foreground color,

to change the default text color,

because the foreground color of a text button

is the text color in the end.

And here you could set this to colors dot white,

using this predefined color.

You can also add a separate text style,

which then wants a text style object,

using this text style constructor function,

which we already before used for styling the text widget,

so this constructor function.

And there we could also set the text color,

but I'll just use it for setting the font size to 28 here.

And this cannot also be constant here.

And with that, this text is a bit bigger and white.

Now I'd just like to have more spacing,

between the image and this button.

And for that we have two main ways of doing that.

The first option is to add some padding on this text button,

which you can do in this style from function

by setting padding.

Padding simply is some spacing inside of the widget,

between the widget content and the widget boundaries.

And this padding can be set here for this text button,

with the padding argument in the style from function.

And it wants a edge insets geometry object type.

Such an object can be created with the

edge insets, constructor functions,

which are suggested to me here.

For example, edge insets all,

adds a certain amount of padding into all directions.

You can also add padding to just the top,

by using the only constructor function instead,

and there passing the top argument, the named top argument,

which then must be set to a number,

like for example 20 pixels.

This can also be turned into a constant value,

by using const here.

And if you do this,

there is more spacing around this button.

Now the alternative approach,

to using this padding setting here,

which is absolutely fine, I just wanna show you options,

is to comment this out and instead add an extra widget,

between the image and the button.

And that would be the sized box widget,

which kind of does what its name implies.

It simply creates a box of a certain size.

And you can add a child widget in there if you want to,

but most importantly you can also set a height

and a width here.

And here we could set this to a height of 20,

and then also add const,

since this can be added for this widget.

And that would also add a widget of this size,

between the image and the button,

hence adding this extra spacing here.

Now we don't see any widget here in between,

because this sized box doesn't have any content.

It's really just a widget of that size,

of that height, that just takes up that space,

without showing anything on the screen.

And that's also an important difference between sized box,

and other widgets, like for example, container.

Container, and most other widgets simply take the width

and height they need to take,

to fit their content into themselves.

For example, a text widget is just as high

and wide, as needed, to show the text on the screen,

so that it's not cut off.

On the other hand with sized box,

you explicitly set a certain height, or width,

and that height, or width is then set in stone.

If you would have some child widget inside of sized box,

that child widget and the content of it,

would not lead to sized box becoming wider, or taller.

Sized box has a fixed width and height,

and if it would have some content

that doesn't fit into there,

because it for example, needs more width,

that content would be cut off.

And that's an alternative to adding padding.

You can use whichever approach you prefer.