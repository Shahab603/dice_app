# dice_app

A new Flutter project.

## 24 - Instance Variables (Propoerties) & Configurable Widgets
So now that we learned about variables

let's use this variables feature to make some

of our code more reusable.

Like for example, the StyledText widget.

We created a custom widget here,

so that we have this reusable StyledText.

But at the moment,

this is only partially reusable if we're honest,

because Hello World! is hard-coded

in this code snippet here.

So whenever we use StyledText anywhere in our application,

it will always output Hello World!.

Now the idea behind this custom widget,

is probably that we want to be able to reuse

this configuration for this text,

so the color and the fontSize,

but the text itself should be dynamic.

Put in other words, it would be better

if in gradient_container where we use StyledText,

we could pass the text to StyledText

so that this can still be set

in the place where we want to use our custom widget,

instead of having it locked into our custom widget.

And that's of course a super common use case,

because most of your widgets should be reusable,

and should be flexible, and should be able to receive data

from outside like here, where we pass data

into StyledText from inside the gradient_container widget.

So how can we make our own custom widget reusable then?

With help of the constructor function.

Because I mentioned before that here when you use a class,

your own one or one provided by Flutter doesn't matter,

with parenthesis like this, which is how you have to use it

in order to turn it into an object,

you're calling the constructor function of that class.

You get one automatically if your class doesn't have one.

Otherwise, your own constructor function is called.

And since this is just a constructor function

being called here, if we want to be able to pass input

values to that constructor function,

we have to accept them here.

We are actually already accepting this named key argument

because we had to, to forward it to StatelessWidget,

but we can accept more than just that key.

Either more named arguments by adding commas here,

and adding all the named arguments that we want to accept

between these curly braces,

or, in addition to these named arguments,

all the positional arguments before those curly braces.

So for example, here we could accept the text.

We then should also add a type annotation here,

to make it clear which type of value this should be.

Otherwise, it's dynamic,

and we typically wanna avoid that as you learned.

And here it would be some string, which we want some text.

And with that, we now are able to pass

some text to StyledText.

This works.

However, with that, we are not using this text in here.

We are accepting the text here, we're passing some text

to StyledText, but this text argument

which we are accepting in our constructor function,

is now not being used here.

Instead, we still have the hard-coded

Hello World! down there.

So how can we use this argument?

Not by using its name here.

If we try to do that, and we use the name text down here,

we get an error.

We get an error because this argument,

which we accept in the constructor function,

is not magically available in some other method

of the class.

These two things are detached from each other,

even though they're in the same class.

This is just how that works.

Instead, what we have to do,

is we have to add a so-called class variable,

a so-called property to this class.

So a variable just like the variables we added before,

but now not outside of a class,

but instead inside of the class to which they should belong.

So here for example, a variable called outputText,

or just text, it can be the same name as this argument.

That's no problem.

So we can add this and if we don't set it to a value,

as you learned, you should instead define

the value type here instead of using var.

So here, I'm just writing String text.

And with that we added a variable to this class,

and this variable is now available in all the methods.

Of course, I'm still getting an error down here,

but here, the error is now actually

a different one than before.

If I remove this text variable,

and we take a look at this error,

we see that now it doesn't even find anything called text,

which makes sense because as mentioned,

there is nothing named text.

This argument here doesn't count,

because the constructor function,

and this method is not connected.

If I add this variable here,

I get a different error.

It's no longer saying that "Text is not known."

Instead it's complaining about some other things here.

The reason for that is that now we do have this variable,

but in the end, this variable is still not set

to the value we receive as a argument here.

To do this, we got two main ways.

We can again add this colon here,

after our argument list,

and then, here, we could refer

to this text variable by its name,

and set it equal to this text argument we're getting here.

So text = text might look a bit strange,

but the first text here refers to the text variable.

The second text here refers to the text argument.

So if I use different names here,

like outputText here and here, this becomes clearer,

and I would also have to use it down here.

So now we would be setting our text

to this argument which we receive.

However, just as before with super,

this is unnecessarily verbose,

and therefore Dart gives us a shortcut,

because this is a very common pattern

that you receive a value on an argument,

and you wanna store that in a variable

that belongs to the class,

you can replace this string part here

with this dot, so that this says this.text.

Now, you just must make sure that your variable

is also called text.

And also down here of course.

This is simply a shortcut,

which looks for a variable called text.

So this variable here, and sets it equal

to the argument value that is received here.

So in this case, the first argument that's received

by this constructor function.

This keyword is another keyword provided by Dart,

and this is a keyword that's used inside of classes,

to refer to the class itself or to refer to the object

that will be built based on the class.

And we can use it here to basically tell Dart,

"That we want to access the text variable

that is defined in this class", so to say.

Now, typically in Dart, you don't need to use this.

If you just use the name of a class variable,

as we're doing it down here in build,

Dart automatically looks for a class variable

with that name, but here for this shortcut

in the constructor function, it is required

because if this would not be added here,

you would just be telling Dart,

"That you want to accept some positional argument,

which you name text here in this constructor function,

but it wouldn't automatically look for an equally named

variable in the class.

And by adding this dot in front of it,

you instead tell Dart,

"That you don't just wanna accept this positional argument,

but that instead, it should also automatically be mapped

to a class variable with the same name."

Now, I'm just getting an error

because we have to remove const,

because now that we received some text here

which is stored in a variable called text,

this can no longer be marked

as a potentially constant object,

because the text might be changed thereafter,

because this is a variable,

and we also have to get rid of const down there,

for that same reason.

We could still turn this configuration object here

into a constant though,

because this is still all hard-coded.

But that is how we could accept such a argument,

store it and then use it.

However, here we also have a great example for using final,

instead of setting this to be a variable,

because this variable here only exists

to store that value which we receive on this argument.

We never plan to reassigning it inside of this class then.

And, therefore, you can actually also add final

in front of the type here,

not instead of the type,

because we still wanna be clear

about which type of value will be stored here.

But, you can add it in front of the type

to make it clear that this will only be set once

by this argument that is received,

and will not be changed thereafter.

And with this done, you can readd const here,

because now this class can be optimized again,

because since this will never change internally,

this is guaranteed to always be the same object

once it has been initialized.

Hence, it can be cached and reused by Dart.

But that's how you can accept arguments,

and store them in instance variables.

So in variables that belong to these classes,

and the objects that are based on these classes,

and that allows you to reuse StyledText

with potentially different text values,

so that the text itself is no longer hard-coded

inside of this class.

And again, that were a lot of new concepts,

lot of talking about that,

but it is never a crucial feature,

because being able to accept, and store, and use values

in your own classes, no matter if they are widgets or not,

allows you to build highly reusable classes and widgets.