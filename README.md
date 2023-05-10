# dice_app

A new Flutter project.

## 18 - Working with Constructor Functions
So we added our own custom widget.

Now, before we continue

there are two things I want to do with that.

For one, we got these blue squiggly lines

and the question's,

where's that coming from?

Well, if we hover over it,

we see that constructors for public widgets

should have unnamed key parameter.

So what's that about?

In the end, your own widget classes,

so classes that extend StatelessWidget

or some other class which you'll see later

should have a constructive function added to them.

I mentioned that typically you don't need to add one,

you get one automatically.

But if you want to add some extra settings

or some extra configuration

at the point of time is widget it is created

you have to add your own constructor function.

And adding a constructor function is quite straightforward.

You simply repeat the name of your class.

So in my case, gradient container

and add opening and closing parentheses thereafter.

Now you could add opening and closing curly braces.

So you add this like a method just without a return value.

But other than that, you added like a method.

And then here you could do some initialization work.

This, by the way is a comment

which can be added with two forward slashes

and which allows you to add some comment text,

which will not be interpreted as code,

but which will be ignored,

but which can help our developers understand your code.

So this is how you could add a constructor

and do some initialization work.

Though often you won't even need to add these curly braces.

Instead here to get rid of these blue squiggly lines

you just have to accept a special named parameter

as part of your gradient container.

And you do that by adding opening and closing curly braces.

This is how in any function you can accept named arguments.

Positional arguments are accepted

by simply adding a comma separated list of parameters.

Named arguments or parameters are accepted

by using curly braces around that list.

And then here, for example,

A and B would be the names

of the arguments you want to accept.

But here it's a special argument named key,

which you should accept.

And this key argument in the end needs to be forwarded

to StatelessWidget.

So this widget from which we are inheriting,

which we are extending,

wants a key argument and that's why your class

should accept such a key argument as well

and forward it to StatelessWidget.

Now two forwarded, you have two main options.

You can add a colon after your constructor function name

and the parenthesis,

and then thereafter you can do

some variable initialization work,

which sounds strange also

because we haven't learned a lot about variables yet.

But here you can reach out to the parent class

from which you are inheriting

by using another special keyword built into Dart,

the super keyword executed like a function effectively.

This is calling the constructor function

of the parent class then

and here you must set the named key argument

to your key here,

which is why I'm repeating key.

This key here is referring to my named argument called Key.

The first key in front of the colon is referring

to a named argument called Key in the super class

in the StatelessWidget class.

This would be one way of forwarding this key argument,

which is what you should do here.

But since you need to do this quite often,

basically for all your widget classes,

and this is a bit verbose if you write it like this,

Dart also gives you a shortcut.

You can simply write super dot key here

and this will accept a named argument called Key

and automatically forward it to the superclass,

so to StatelessWidget under that same name,

so also under the name key.

And that is something you should do here.

Now, I also got some more blue squiggly lines here

where in the end I learned

that I should turn this into a const constructor

by adding const in front of it.

And this is a place where we have used const before.

We only used it in front of values,

but in the end when we used it in front of values,

we took advantage of constructor functions

that had this const annotation internally.

When defining your own classes

with your own constructor functions

you often can add const in front of them

to tell Dart that this in the end

is a class that can be optimized

that can be stored in memory,

such that it is reused

as I explained a couple of lectures ago

in this section already.

So with const in front of your constructor function

you basically unlock,

that const is then used

in front of your class when it's used as a value.

So because of const at adhere,

we can also add const here.

Or since scaffold and material app actually also

are defined to be optimizable with const

you can even add const here

in front of material app,

using that optimization technique

I mentioned before in the course.

Now here, just also with your class unlock

to be optimizable.

And as always,

the code editor will simply tell you

when you have an opportunity to unlock such optimizations,

in this case by telling us that we should add const here,

which is why I'm doing that.

So that was one thing I wanted to take a look at,

constructor functions,

which is a feature we'll later also use for other purposes,

but which we here needed to add

to make sure that this value,

which is wanted by the parent class is forwarded correctly

and to unlock this potential optimization.