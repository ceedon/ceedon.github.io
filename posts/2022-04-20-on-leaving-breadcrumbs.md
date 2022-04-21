---
title: "On Leaving Breadcrumbs"
author: "Chris Donnelly"
description: "What to do when creating the conditions for skill to atrophy is desirable"
date: 2022-04-20
category: "blog"
tags: ["technology", "sociology", "ecology", "social practice theory"]
---

We create artifacts to remove the need for skill.
Too often we fail to account for the atrophy that naturally occurs from not exercising a skill often.
What do?

I read [a snippet of conversation about automation](https://changelog.com/posts/automation-is-the-serialization-of-understanding) this morning that resonated mightily.
As I had just hopped off of a pairing session to understand how in the hell some automation worked, it started me thinking about the flip side of the coin:

> If automation is the serialization of understanding, what happens when we can't deserialize understanding from it?

Having had the pleasure of being near [Jabe](https://twitter.com/cyetain) and [Mark](https://twitter.com/somesheep), my mind leapt to Social Practice Theory.
Let's frame "automation is the serialization of understanding" through that lens.

When we say automation we're talking about "stuff". We're defining "stuff", material in the theory proper, as the manifestation of someone's "skill". In engineering land, that's often the skill of the automater, but it need not be so. The computer I'm using is a piece of stuff that let's me not need to know about how to make [rocks think by trapping lightning inside](https://twitter.com/daisyowl/status/841806379962646532). Barring intense reverse engineering by someone who kinda already knows what's up, we're not figuring out how to recreate said rock by studying it. This is all well and good; we're happy to outsource that knowledge. But what about when we make that trade-off accidentally? What about when we want, and desperately need, to be able to recover "skill" from "stuff"?

Back to my pairing session:
This script was about what you'd expect from someone jamming out a solution to the problem at hand with the belief that they'd come back to it to refine later when later never came. Compeletly inscrutable. Grown, not designed. Undocumented. No breadcrumbs for anyone to follow. As a result, the skill of the creator has been lost to time. This is the crux of legacy code. Stuff from which we can't recover skill.

Stuff causes skill to atrophy. Maybe not our skill. Maybe the skill of the people the people using the stuff we cast off. We should care about documentation in its very many forms for its ability to provide a trail for others to (re)build skill. Too often we learn that the other is future us, so be selfish; you'll come to the same place. We need to help those who come after recover the skill we used to craft our stuff.

Alan Cooper's [thoughts on pairing](https://twitter.com/MrAlanCooper/status/1060553914209071106) apply to leaving breadcrumbs:

> > > When you program in pairs, you have to communicate your ideas, you have to explain your thinking, you have to agree on intent, and your work gets checked and checked again. If this bothers you, you can’t sustain it at a high enough level to be professionally competent.

This is what it means to be a professional in modern software development. We're tending to our living system of code and services, but more importantly we're tending to the understanding of the people around us. We have to put that understanding into stuff, but we don't have to lock it away. Leave some breadcrumbs. Maybe someone comes to visit.
