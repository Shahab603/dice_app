# dice_app

A new Flutter project.

## 25 -Reusable Widgets & Constructor Functions
So now that we adjusted this class

to be more reusable by dynamically accepting input values,

you can do the same for the gradient container

as a little exercise here.

At the moment here we got some hard-coded colors,

and whilst this of course works here,

and is absolutely what we need for this demo app,

if this would be a bigger project,

a bigger app potentially with multiple screens,

we might want to be able to reuse this gradient container

in different parts of the app with different colors.

And at the moment that would not be possible,

because the colors are locked in here.

Therefore, as an exercise,

you should use the new knowledge you gained

in the previous lecture

and make gradient container more flexible,

by basically ensuring that when we use gradient container,

we can pass our colors here as arguments,

in whichever way you want to gradient container,

so that inside of gradient container

those color inputs are accepted, stored,

and then used down there.

There will be different ways of solving this

and I'll give you a short break here to pause the video

and try this on your own before then thereafter

we'll solve this together.

So, did you succeed?

Let's now solve this together.

As mentioned, there will be different ways of solving this.

For example, you could accept a colors argument here,

a positional one, or a named one,

doesn't matter it's up to you.

And here I'll go for a named one

to show you both approaches.

And this colors argument of course

should be of the same type as the colors down there.

So it should be a list of colors.

We can simply copy this type here

to set this as a type.

Though as you learned we can even switch to different syntax

since we'll need to store this in a variable anyways,

and add our variable here or better our final variable,

our final data container of type list color

which could be named colors,

and assign the value that's received

on this named argument here to this parameter

by using this dot colors here.

Now, if you tried to solve this with a named argument

you likely encountered this error here,

which in the end tells you that the problem now is

that this is optional where it actually shouldn't be.

The reason for that is that named arguments

by default are optional with Dart.

You can solve this by adding required in front of this.

Now most likely you simply went for a positional argument

because that's easier to use and that's what we used before

and that's of course totally fine.

I just also want to show you this alternative

that if you want to use a named argument

you can do this as well

but you have to add required in front of this.

And here I'm keeping this approach

so that you now know also about this alternative

and how you can use named arguments

that are actually not optional

because by default as mentioned

named arguments are optional.

So now with that we got our colors input,

we're storing it here in this variable

and we set this to exactly the type we need.

And then of course we could use the down there

as a value like this.

Now, I have to get rid of cons here

because colors here actually is a list.

Even though it's final

it's still a list and lists by default and Dart

can be edited,

they can be mutated even if they're final,

which is a bit more advanced

and not too important right now.

But for that reason, you can't have cons down there.

And you can see this if you hover over colors down there

you in the end get that hint

that you should remove the cons keyword.

So that's what we have to do here then.

That's one way of solving this.

Now, I'll copy this entire widget and comment it out

so that we can still see the code

but it's not active anymore.

And I'll paste it in again above the commented out widget

to show you an alternative approach.

Because of course instead of accepting

such a list of colors

you can also accept two individual colors.

You could, for example, accept two positional arguments

or two named arguments totally up to you.

Color one and color two, that could be the names.

And both should be of type color of course.

Then we would need our variables,

or again better our final values here

which should be of type color, color one and color two.

And now we can use these shortcuts

with the this dot notation here

just as you learned it before.

Again, this would accept some input values

and store them in some variables.

Now, the differences that we don't accept a list

of any kind of values and any amount of colors

but instead exactly two colors,

which are both required because positional arguments

by default are always required.

And now we can use these colors

color one and color two down there in this list.

And with that in main Dart

you can then pass your colors to gradient container.

If you took the first solution with that list of colors

you would pass your list of colors here,

if you took the second solution instead,

you would pass your two colors here.

So again, here, I'll just quickly use deep purple

as a starting point,

and then use this color picker

to pick some dark blue, purple-ish color,

and then copy that, add a comma

and set my second argument here, which is also a color

which is a lighter purple color like this maybe.

And with that, I'm applying these new colors

to this application here

now with my reusable gradient container component.

And again, this component here is reusable

because I'm accepting these color values dynamically

as arguments, I'm storing them

and then I'm using them in my build method.

And this is a pattern as mentioned,

which you'll see a lot throughout

this course that you're building reusable widget classes.

