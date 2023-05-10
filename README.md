# dice_app

A new Flutter project.

## 22- Variable Type - Combining Two Key Concepts
Now variables actually also have types.

Here I'm creating two variables,

and in this case here, Dart is able to infer their types.

If you hover over your variable names, you see the type here

and Dart knows which type will be stored in this variable

because it simply takes a look

at the value you are initially assigning to the variable

and uses that value's type, in this case here Alignment,

as a type for the variable.

If you would not assign a value initially here

and you instead would only set one at a later point of time,

like this, for example, the inferred type would be dynamic,

which is a special type in Dart

that in the end just means that Dart knows nothing

about the type of this variable

and it will indeed accept all value types.

Typically, you want to avoid this

because that can lead to bugs in your application

because without type information,

Dart can't ensure that you're not accidentally using

the wrong type in the wrong place.

And therefore, in such cases,

where you don't assign a value initially,

you should replace the var keyword with the name of the type

that will be stored in that variable.

Here, for example, Alignment.

With that, Dart would have more type information.

Though of course here we would still get an error

because we tell Dart that we want to store a value

of type Alignment in this variable

but initially we store no value in here.

We would have to add a question mark after Alignment

to make it clear that startAlignment

is either of type Alignment or Null,

so that it's basically optional, whether it's set or not.

So a Null value would be allowed here.

Now this would lead to more errors down here

because begin actually doesn't want a Null value

and therefore I'll get rid of that

and just initialize it as I did it before, all in one step.

But it is important to know about this alternative syntax

where you do explicitly set a type

and not rely on type inference

if you're not initializing the variable with a value.

If you do that, as we're doing it here,

using the var keyword is recommended,

because here you should indeed rely

on Dart's type inference.