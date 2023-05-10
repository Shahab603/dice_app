# dice_app

A new Flutter project.

## 23 - Final & Const - Special Kinds of Variables
Now there is more

you should know about variables.

For example, you sometimes have variables

that never change.

Of course, technically it's called variables

because the value is variable,

but in the end it's all about

having data containers,

and those data containers

could also be set once

and never change after.

For example here,

I never assigned new values

to start and end alignment.

And if you know that this is the case,

it's recommended that you use

final instead of var.

Final is another built-in keyword,

which simply means that this data container

will never receive a new value.

And whilst you could of course stick to var,

it's always a good practice to be as restrictive

as possible so that you never

accidentally reassign a value here.

Of course, you are the only one working

on this project here probably,

but in bigger teams

with multiple developers working on the code,

you want to be as restrictive as possible

to make sure that some colleague of you

is not accidentally overriding

one of your variable values

somewhere else in the overall project code.

That's why the final keyword exists.

Now here, I'm of course getting some

blue squiggly lines

that I should use const

instead of final in the end.

And indeed that's another usage

of cons which we haven't seen up to this point.

You can create so-called constant variables

or constant data containers.

You could say.

It's almost the same as final

because const also makes sure

that you can't reassign those variables.

But unlike final, it provides

some extra information to Dart.

When using const

here in front of a variable name.

So on the left side of the equal sign

in the end,

you are telling Dart that the value that's stored

in here is a so-called compiled time constant,

which means it's simply locked in

at the point of time this code is compiled.

Now that's not necessarily always the case.

You could for example, also have some code

where you are maybe calling a function,

getAlignment which doesn't exist in this project,

but which could exist and which then

behind the scenes could dynamically

calculate the desired alignment.

You could definitely have something

like this in your application,

and if that's the case,

that of course means that dysfunction

must be executed when the app runs

to get the actual alignment value.

In that case, it might still be final,

you don't reassign the variable thereafter,

but it's not compiled time constant

because the value that might be returned

by getAlignment is not known

at the point of time

when this code is compiled yet.

Instead, it's only known once the code executed.

And here that's different for alignment top-left.

This indeed is locked in at the point of time

this code is compiled.

Top-left is clearly defined

to the top-left corner of the device,

so to certain X and Y coordinate values,

and therefore you can use const to tell Dart

that this is not dynamically derived at runtime,

but can be locked in and set at compilation time,

and this is another potential

performance improvement

because if some value can be locked in

at the point of time the code is compiled,

this code doesn't have to execute

when the app executes.

Instead, this locked in,

and internally saved value can be used

by Dart when this code is about to execute.

So it's some internal performance optimization,

and therefore here when defining variables,

you should also use const instead of final

whenever it makes sense.

So whenever you have such a compiled time

constant value.

And just as before, the code editor will simply

tell you when you have such an opportunity.

By the way, with that set to const,

you can also re-add cons down there

in front of box decoration,

because now that this is const instead of var,

you are guarantee that it will

never be reassigned and therefore

you can use cons here

because this code is now no longer

potentially variable

because it can't be set in any other place.

It can only be set once,

and therefore here we can unlock

this potential optimization

of the box decoration object again.

And in case this is all not 100% clear

just yet,

you will see variables and final values,

and constants over and over again

throughout this course.

But it is important to be aware

of these concepts right now already,

because we'll use more variables

in the next lectures.