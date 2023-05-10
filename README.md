# dice_app

A new Flutter project.

## 19 - Splitting Code Across Files
Now besides constructive functions

the other thing you should be aware of

when working with classes is

that it's considered a good practice to put them

into a separate file.

So here we can select this entire class and cut it.

And then in the lip folder add a new file

which I'll name gradient_container.dart.

And the name is generally up to you

but it should follow this naming pattern.

All lowercase, multiple words separated by underscores.

Dashes are technically allowed but will actually not work

and this would be quite unreadable.

So underscores it is.

And then in this file you can store your class.

And we do this, we split the code

across multiple files to keep every file readable

and maintainable so that all these files are relatively lean

and don't contain endless amounts of code.

But you instead just have one main thing per file

one main function or collection

of functions or one main class profile.

Now of course with that added to a separate file

we got a bunch of errors in here

because all these flutter specific types

and widgets are now unknown.

They are unknown because the import

to the flutter package is only here

in the main dot dart file.

But this must be added

to every file where you are using features

from that package, which is why you should copy it

and add that same import here

in the gradient container dot dart file.

And with that, all these errors go away.

We still have an error in the main dot dart file though

because gradient container is unknown here.

This is not defined here because it is now defined

in a different file and dart does not automatically scan

and connect all your files in your project.

Instead, you have to explicitly define any connections

between files that you want to consider.

And you do this with the import keyword.

So here in main dot dart, besides importing something

from the flutter material dart file, we also

must add another import where we also import from a package.

But this package is now our own project

and therefore after package colon we use our project name

in my case basics.

So here I'll use basics.

This is basically whichever name you gave your

project when you created it with flutter create.

So it might also be first app

if you're still working in that project.

Here for me it's basics.

And then here it's the gradient container dot dart file

from which I want to import.

And you should of course, again, get some suggestions here.

Also regarding your project name.

You can always open those suggestions with control space.

And then here,

if I import from gradient container dot dart

and add my semicolon gradient container is found again.

And hence, if I save everything and reload, it still works.

There is no error

because we again have some valid code here.

Now following common best practices and conventions.