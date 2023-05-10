# dice_app

A new Flutter project.

## 13 - Generics, Lists & Adding Gradient Colors

So therefore, here we now can pass such a list

of colors and a list value is created

in Dart by using square brackets, opening and closing.

And between those square brackets

you can now add all your values.

Now, for example, your strings, but

of course here we don't want strings, we want colors.

So we can create them with the color function

or with color from ARGB or with the colors object,

which simply give us some redefined colors to choose from.

So for example, again, deep purple here.

Though here, I actually don't want that.

Instead, I'll use the color picker again to

select a nice dark purple, and you can of course

choose any color of your choice.

And then in this list, we can add a comma to

add a second value to that list because in lists

values must be comma separated.

And we can copy the first color as a second value

in that list and then pick a slightly

slightly different color, maybe more purple ish,

a little bit lighter, whatever you want.

I'll pick this color and also add a comma

after the closing square brackets.

That's another place where you should add commas

for proper code formatting.

And if I now auto-format this

that's a bit more readable, though it would also be

nice to get rid of these blue squiggly lines.

And here, if you hover over them

and you scroll down from that color picker

you again see that it's about const again.

And we want to add const at the highest possible place

which in this case is in front of box decoration.

So in the end, these are all, again

objects that support being set to const so

that Dart can possibly cache store these values

and reuse them if we would use them somewhere else

in our code to take advantage

of this memory usage optimization

and potentially improve our application performance.

And with all of that

we're using a bunch of objects in conjunction.

And we learned about this special new list value type

which is a generic type that is able to work together

with other value types.

Though here it's really a list of colors that's needed.

And with all that, if you save that

and make sure that these changes get applied

you see this gradient in the background.

And of course you can pick colors

with a greater contrast to see this gradient a bit better.

But here I have just that slight gradient

which is exactly what I want.