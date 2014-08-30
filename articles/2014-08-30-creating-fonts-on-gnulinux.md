---
title: Creating Fonts on GNU/Linux
date: 30/08/2014

I read a lot of *Fantasy*. So much,
that I have gained a love of scripts and such.

By scripts I mean to say fake languages:
those written, spoken, and described therein.
By such, I mean the cultures they are from.

[Constructed Languages][conlangs] are something that
I have great intrest in. I think it is
because a language is so vital to 
community; No one has not used one
(That's reading this, at least.) But I digress.

I've had occasion to design some fonts
for a few scripts that I would like to use.
But learning to make fonts on Linux is
an art which could do with some more guidelines.

Once You've scanned in Your font's main characters:

1. You need them all cleaned up and cut apart.
2. You need to convert them to vector paths.
3. You need adjust kerning and make the font.
4. You need to test it on Your system, too.

I won't make a tutorial right now,
instead I will just point You to the tools.

1. For this, [GIMP 2.0][gimp] will work just fine.
2. Vectors are the mainstay of [Inkscape][inkscape].
3. You'll put it all together in [Fontforge][fontforge].
4. To add it to Your system: [fontconfig][fontconfig].

The next part of this series will be *here*
when I've completed writing it all out.
It covers using [GIMP][gimp] to prepare
Your font's main images for [Inkscape][inkscape] use.

[conlangs]: http://www.omniglot.com/conscripts/index.htm "A good primer list here. In short, things like Tolkein's Tengwar."
[gimp]: http://www.gimp.org/ "My Graphical Art Program of Choice."
[inkscape]: http://www.inkscape.org/en/ "Vector Graphics' poster child for GNU/Linux."
[fontforge]: http://fontforge.org/ "This is where all of the magic happens."
[fontconfig]: http://www.freedesktop.org/wiki/Software/fontconfig/ "You probably already have this, if You use GNU/Linux in a GUI."
