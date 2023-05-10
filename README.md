# dice_app

A new Flutter project.

## 08 - Understanding "Constant" Value

So we got our first screen output,

our first basic UI

even though it's of course never helpful nor pretty,

but it's a start.

We achieved this by combining the MaterialApp

and text widgets and passing that widget combination

in the end to MaterialApp.

Now, you might notice

that there are some blue squiggly lines below that code.

Now in Visual Studio Code, blue squiggly lines

as we have them here, mean that there isn't an error

but there is some improvement potential.

The code is not optimal or it does something

that should be changed.

And you can hover over the code

that has these squiggly lines

to learn more about the problem.

And if you scroll down in that infobox

because the messages are always at the bottom,

you see that here, the recommendation

is that we should use const with the constructor

to improve performance, whatever const is.

While, we can get rid of these blue squiggly lines

by adding const in front of MaterialApp.

But what is this const thing?

Well, const is a keyword.

As you can also tell by its color.

It has the same color as void and import.

So it's a keyword provided by Dart

built into the Dart language.

And const is a keyword and a feature that exists

to help Dart optimize the runtime performance

of your application.

And how does it do that?

Well, if you mark something as const,

let's say a text widget that you're using in your app

then this text widget will be stored internally

in the memory of the device on which the app runs.

And that will always be the case no matter

if you use const or not.

Once your code executes the things

that are created by your code,

the widgets, for example,

will be stored in the device memory,

but with const when you then use that same widget,

that same widget with the same text,

a second time in the app

that existing memory thing will be reused

instead of a second memory object being created.

So therefore, using const allows start to reuse values

that are indeed equal and avoids the duplication of data

in memory, hence, making your app more memory efficient

and improving overall performance.

Of course, behind the scenes things are a bit more complex

but that is in a nutshell what's happening,

and that's why you should always add const

when prompted for it.

Now, the good thing is you don't need to learn by heart

in front of which widgets,

you should add const, for example,

instead, your code editor will simply tell you

by adding these blue squiggly lines here

and then you should indeed add const.

Of course, for this basic app,

it doesn't really make a difference.

We're not reusing this combination of widgets anywhere.

So, marking it as constant won't give us

any big advantages here but it also doesn't hurt

and it's simply a best practice to use constant front

of all the values where you can use it.

And as you saw, using it in the right places is very simple

because your code editor simply tells you.

For example, also tells you, if you're using it

in a place where you should remove it.

For example here, if I add it in front of MaterialApp

and in front of text, then I get a message here

that I'm using const unnecessarily in this place

because I'm already using it in front of MaterialApp,

which then contains text.

So using it in front of text in addition to that

is simply redundant and therefore should be removed.

But that's in the end what const does,

it allows start to run your application

in a more efficient way.