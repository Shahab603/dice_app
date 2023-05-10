# dice_app

A new Flutter project.

## 20-Creating Custom Widget
Now, when working with Flutter,

you will create custom widgets all the time.

So it's important that you're able to do this on your own.

Hence, here's your opportunity to practice this.

I want you to create a separate new widget

for this text part here.

This should be outsourced into a separate widget,

which you could, for example, name StyledText

which you then use

in this widget here in the GradientContainer again.

Create that custom widget for this StyledText

as explained in the last lectures and after a short pause,

which I give you to pause this video

and try this on your own,

we'll outsource this into a custom widget together.

Did you succeed?

Let's now do this together.

For that I'll first of all trade a new file

because you learned that you should put your own widgets

into separate files in that lib folder.

And I'll name it styled_text

because I will add a StyledText widget in there.

Styled_text.dart it is therefore.

And then in there, we create a class

and I'll name it StyledText.

The name is up to you

but it should follow these conventions

about which you learned.

And we, of course, extend stateless widget here.

Though for this to work, you also must add the import

to package:flutter/material.dart as you learned.

Now with that set up, we must add that build method

by adding override and then Widget build,

accepting this context parameter

and returning a widget as you learned.

And the widget that should be returned here should,

of course, be this text here.

So we can cut this from GradientContainer

and return this here inside of StyledText.

Now, here I got a bunch of blue squiggly lines

because indeed here we can now add const again

as you learned if you hover

over these blue squiggly lines, since this can be cached.

This is, by the way, independent from the fact

whether we add a cons constructor to this widget or not.

This optimization in this widget tree is detached

from the fact

if we unlock this widget for being optimized itself.

But of course here, we should add a constructor

for the same reason as before

to forward that key argument about which you learned.

Hence, I create a constructor

by repeating that name of the class.

And then here, opening and closing curly braces

to accept a argument named key.

And with super.key,

we then forward this to StatelessWidget.

And here we should now also add const

since this is suggested

to us here to unlock various optimizations by Dart.

And with that we have our StyledText widget defined.

We can now use it in GradientContainer.

There we can type StyledText and use it like this.

But of course to unlock it here, we also must add an import

in the gradient_container.dart file.

Here we must import from our own package, in my case,

named basics, in your case maybe named first_app

or anything else, whatever you named your project.

And then here, I wanna import

from the styled_text.dart file.

With that, with this import added,

this StyledText widget down here is found.

So this here works and if I save everything

and force a reload, my application still works.

And this was a nice practice for creating your own widgets.

