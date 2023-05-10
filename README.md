# dice_app

A new Flutter project.

## 18 - Building Custom Widgets
So now that we know

that it's all about objects

and that those objects are built based on classes,

the question is which code do we have to write here

to create our own widget class?

And the answer to that

is that you use the class keywords to tell Dart

that you are about to create a class.

And then any name of your choice, like GradientContainer,

the name is up to you, but it should follow certain rules.

For example, it should start with an uppercase character.

And if it consists of multiple words as this name here does

these words must not be separated by a white space or a dash

but instead you should separate them with an underscore,

or way better and actually recommended, like this.

It's all one long word, but the words inside of the word

start with another capital character.

So that's then the name of your class.

And as mentioned, it is up to you.

It should just follow some general rules

regarding how the name is written

and it should also describe what the class is about.

So which kind of optic will be created.

And here my idea is to create a container widget

that will come with a gradient already applied to it.

So that name sounds quite fitting.

Now you could create a class like this

because in Dart you can also create classes

that are not widgets.

And in that case you would probably be done at that case.

You could add curly braces and add your class logic

between those curly braces, just as you add function logic

between the curly braces of a custom function.

But since this should become a widget

you actually have to add more in front of these curly braces

because classes can extend our classes,

they can inherit features

and data and logic from our classes.

And that's done by adding the extends keyword,

another keyword built into Dart.

And then the name of the class

from which you want to inherit.

And here that's StatelessWidget written like this,

which is a class that comes from the Flutter framework.

And that is available here because of this import

which we added at the top at the beginning of this section.

So StatelessWidget is the class

from which you want to inherit.

And inheriting from that widget does a couple of things.

Most importantly, it automatically behind the scenes

adds a lot of logic and data to this class here

without you writing anything between these curly braces.

It adds a lot of data and logic that is required by Flutter

in order to use this as a widget and add this to a UI.

But in addition to adding things behind the scenes,

extending from StatelessWidget

actually also forces you to add something to your class.

And that's why I'm getting an error here at the moment.

Because at the moment I'm not implementing everything

in my own class that I should implement.

Most importantly, I'm missing a method called build.

So therefore, to correctly extend this widget

you should add a new method here called build

with parentheses and opening and closing curly braces.

So just as you would define a function,

but now inside of a class.

And you can add functions to classes.

We then call these functions typically methods,

but it's in the end just a function added to a class.

So in the end, bound to that class.

And this build method here must return a widget.

Therefore, you have to add widget in front of build

because as I mentioned earlier already,

the thing in front of your function name

is the return value type of your function.

Now thus far, we haven't created any functions yet

that would return anything, but that's going to change soon.

Now you also should add an annotation

in front of your build method, and that's @override.

This is technically not required

but you should indeed add it because this makes it clear

that you are in the end overriding a method

that is expected by StatelessWidget.

It's simply some extra metadata

or annotation added to this method.

The more important adjustment that also must be made

in addition to adding the type and @override

is that build also must accept a parameter.

A parameter, which you should call context or a ctx,

though the exact name is up to you.

But this is required because indeed this build method

will be executed for you by Flutter.

Flutter will call this build method

once it finds your widget inside of some other widget

or passed to the runApp function.

So basically, whenever Flutter detects your widget

in a widget tree, it will call this build method.

And this build method will then automatically receive

by Flutter a value for this context parameter.

Now, for the moment, this context parameter doesn't matter.

You will see it an action later in this course instead.

For the moment, you can simply think of context

as a metadata object that contains some useful information

about this widget in the overall widget tree.

For example, some information

about where this widget is positioned

in the overall widget tree.

Now between those build method curly braces

you now have to add the body of this function.

And here you have to do one important thing.

You must return a widget

because widget is the return type of build.

Now up to this point, in all the examples I just showed you

from time to time, you always saw void.

That's of course also what we have

in front of the main function.

And void is also the return value of a function.

But void is a special value built into Dart

which simply means there is nothing to be returned.

So the function should not return any value.

And for build that's different.

Build should return a widget.

Now, how do you return a value in Dart?

Well, inside of the function

or method that should return a value,

you use the return keyword

and then thereafter the value you want to return.

And when a function or method returns a value

with that return keyword, that value will be available

in the place where the function was called

and it can then be used there.

Now in case of the build method, as mentioned before,

it will be Flutter that calls this method for you

behind the scenes when it renders the user interface.

And Flutter will then take the widget returned by build

and make sure that it's reflected on the user interface.

So by using return here in this build method

you ensure that flatter gets access to the widget

or to the combination of widgets you wanna store

in your own custom widget here,

because custom widgets in the end

are all about storing combinations

of other widgets and configurations.

So here in this build method

you return the value that will be used by Flutter.

For example, some text.

Though of course here,

it's not some text that's wanted but a widget.

And therefore here, instead of returning text

we now go to our main widget tree

and select the part of that tree that we wanna outsource.

In my case, the container widget

with all its configuration and child widget.

And we cut that from here

and return that in our own widget instead

in the build method, after the return keyword, like this.

Container in the end is of type widget.

And therefore, now here Dart is happy

because build does return a widget.

So that's the first step.

I got some blue squiggly lines here.

For the moment, we'll ignore them.

I'll get back to that soon. But that's the first step.

As the next step, we can now use our own custom widget here

in our main widget tree, which we pass to runApp.

And for that we simply use our widget with its name,

in my case, GradientContainer,

and add parenthesis thereafter.

And this calls the structor function of this class,

which in this case is not a function we added explicitly.

I'll come back to constructor functions in just a second.

But instead, for the moment

we just call a constructor function

that's automatically added to all classes.

So even if you don't add

your own constructor function explicitly,

which you can do but which we're not doing here,

you get one automatically by Dart.

And with that, if we save everything and force a reload,

this app looks the way it did before

because of course we haven't added any new UI elements

but the fact that it looks like before

and we don't have an error here shows us

that outsourcing this code into a custom widget worked.

And this was a crucial step

because you will work with custom widgets all the time

when working with Dart and Flutter.

You will see it all the time in this course

and you will need this feature all the time

in your own projects.