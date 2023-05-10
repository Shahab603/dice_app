# dice_app

A new Flutter project.

## 17 - Understanding Class 
As you learned, widgets are objects

and objects are simply these data structures in memory.

And of course, not just widgets are objects.

As you learned before,

all value types in the end are also objects.

So all value types are such data structures in memory

and that's why this objects concept

is a key concept in Dart.

Now, classes are closely related to this objects concept.

For that, it's important to understand

that Dart is in the end an object oriented language

because as mentioned, every value is an object.

And of course you have such primitive values

like text or numbers, which are created by, for example,

wrapping text with single or double quotes

or simply writing down a number in your code.

But you also have more complex values in your code,

like for example, these widgets

but also these configuration objects which you saw.

For example, the object that allowed us

to configure our gradient or the individual color objects.

And those more complex values are created

with help of classes, because classes in Dart

and in many other programming languages as well

are simply the blueprints for objects.

Now, why do we need such blueprints though?

Well, as mentioned,

objects are these data structures in memory.

And here a good question would be,

what's inside these data structures?

And the answer is data, so-called variables or properties.

For example, the username of a logged in user

or the color you chose for a gradient,

but also logic, functions,

or as it's typically called in the context of objects,

so-called methods.

So objects in the end are really all about organizing data

and separating logic.

So that logic that works with certain data

is typically in the same object as that data

and not in some other object

or some other place in your code.

For example, this color object here

will contain the different color values

for its red, green, and blue colors.

And if you add a dot thereafter,

which is the Dart syntax for accessing data

or functions that are grouped into an object.

If you type such a dot,

you get a list of different variables,

properties that you can access.

So the data I just mentioned

that would be stored in the object.

The red, green and blue color values

and some other pieces of data as well.

But you for example, also get some functions down there

with blue, with green that, for example,

would allow you to create a never color based on this color.

And which functions are provided by which object

simply depends on the definition of this object.

And that's now where these classes become important

because with those classes you define exactly that.

You define which kind of data will be stored in an object,

when it is then created at runtime,

and you define which extra functions, so-called methods,

might be stored in such a object.

So color here like Container, and Scaffold,

and BoxDecoration, all these things are in the end classes.

Or when executed like this

or when using this fromARGB function here,

you are in the end

using so-called class constructor functions

which simply are functions that are used to create objects

based on those classes.

But all these things have classes as blueprints,

as you can also see in the official documentation.

This is the linear gradient class after all

as you can see here.

And you see more classes that are related on the left.

So these are all the blueprints that are built into Flutter

that you can use in your code

to create objects based on those blueprints.

So in your code, you in the end work with the classes

and their constructor functions.

And when your application then runs on a device

and your code executes from top to bottom

then the actual objects are created and stored in memory.

That's how you can think about that.

So all these built in widgets

like these configuration objects here in the end are classes

which you then turn into objects

by executing them like functions.

So by calling their constructive functions.

This process is also called class instantiation

or object instantiation.

You are instantiating a class.

You are creating an object based on a class.

And that's why your custom widgets are also classes.

The built-in widgets are defined as classes.

You define your custom widgets also as classes.

