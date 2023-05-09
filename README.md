# dice_app

A new Flutter project.

## Importing Features from packages

So the code editor

doesn't find the runApp function.

It doesn't know where runApp comes from.

Now, of course, I showed you that runApp is defined

in the Flutter framework.

It's coming from Flutter.

But when writing code, you have to be very explicit.

You have to tell your program

that runApp is coming from Flutter.

It's not guessing that this could be the case.

There are hundreds and thousands of libraries

and packages out there in the world

written by other developers, and therefore, of course,

your code and your code editor

doesn't guess from which of these many packages

this runApp function might be coming from.

Instead, you have to tell your code.

And for that, the first important step in a Dart program

is to go to the pubspec.yaml file,

because in that file you can manage the dependencies,

the third party dependencies of your project.

You can reference other libraries or frameworks

from which you want to use code in your project.

And in there, under dependencies,

you have to add all third party packages

which you want to use as dependencies in your code.

So from which you want to use features.

Now here, Flutter is actually already added as a dependency

so we don't need to change anything there,

but it is important to understand that this entry must exist

in order to use features from that package.

Of course, here we're still getting an error

despite having added this package in the pubspec.yaml file.

And the reason for that is that,

even though we added this dependency,

our code still doesn't magically look into

those dependencies which we added,

and then check if there is some runApp function anywhere

in that third party code.

Instead, we have to add a so-called import statement

at the top of the file.

And we do this by using a special keyword:

The import keyword, which is built into Dart.

The import keyword tells Dart

that we wanna kind of connect our code file here,

our main.dart code file here with another code file,

or to be more precise, that we want to use certain features,

certain functions for example,

that are defined in some other code file

in this code file here.

And for that, we have to add a so-called import path

after the import keyword,

where we specify from which file we wanna import something.

You define such a path by adding opening and closing quotes,

double quotes, or single quotes.

That is up to you,

but single quotes are more common in Dart projects.

And then since we wanna import some code

from a package here,

we start by writing package followed by a colon,

and then followed by the package name.

Now you see I'm getting some auto suggestions here

by my code editor, which is a very useful feature

because it can speed up development and it also

reduces the danger of introducing typos,

since we can use these suggestions to autocomplete our code

as I'll show you in a second.

But here at the moment,

I don't have any suggestion that I need.

Instead, I need some functionality from the Flutter package.

Hence, after the colon, we type Flutter,

and you see that my suggestions are changing now,

and then we want to get access to some code

that's defined in some specific file

in that Flutter package.

And hence we create a path to that file

by adding a forward slash,

and then for us it's the material.dart file

from which we want to get code.

If I type ma here,

the suggestions are narrowed down even more.

And now as I mentioned,

it's this material.dart file I'm interested in,

so we can select this with the arrow keys

and hit tap to auto-complete this path here.

And that's the part that can speed up development

and also avoid typos.

Now we must end this with a semicolon,

because basically all your statements

must end with a semicolon.

Function definitions are an exception.

You don't add semicolons here

after the opening or closing curly braces.

But Visual Studio Code also tells us

that this semicolon here is unexpected,

so you can't really get this wrong.

It also tells you if you forget a semicolon,

here if I scroll down,

the error messages are always at the bottom.

I also get an error that a semicolon would've been expected.

And with that, we have a valid import statement,

and now the runApp error went away.

And you also might have noticed

that the color changed from white,

which is always a good indicator

that some identifier wasn't found,

to a light yellow color.

I still have an error here,

but that's now a different error, which we'll tackle next.

But now runApp is found because material.dart in the end,

gives us access to the runApp function

defined by Flutter in their code.

And that, of course was a lot of talking about this

but understanding functions,

calling functions and function definitions,

and how Flutter apps start is of course very important.

