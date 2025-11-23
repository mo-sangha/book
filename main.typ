#import "template.typ": *
#show: template

/////////////////////////////////////////////////////////////////////////////////
// Cover Page
/////////////////////////////////////////////////////////////////////////////////

#page(
  background: rect(
    fill: gradient.linear(rgb("#87cfe9"), white, angle: 90deg),
    width: 100%,
    height: 100%
  ),
  numbering: none,
  margin: auto,
  [
    #set par(justify: false)
    #place(top + center, text(32pt, weight: "bold", book_title))
    #place(horizon + center, image("images/thigle.png", width: 90%))
    #place(bottom + center, text(24pt, "Lama Dawai Gocha\n& Sangha"))
  ]
)

#pagebreak()
#counter(page).update(1) // Don't count the cover page.

/////////////////////////////////////////////////////////////////////////////////
// Copyright and publication information
/////////////////////////////////////////////////////////////////////////////////

Draft copy.

Published #datetime.today().display("[year]-[month]-[day]").

This text is self-secret and self-protected.

#pagebreak()
#counter(page).update(1) // Don't count this page either

/////////////////////////////////////////////////////////////////////////////////
// Table of Contents
/////////////////////////////////////////////////////////////////////////////////

#show outline.entry.where(
  level: 1
): set block(above: 1.2em)

#page(
  numbering: "i", // Use a different numbering for the table of contents.
  [
    Drafting notes:
    
    - Sections #todo[in this color] are still in development.
    - Sections #approval[in this color] need review by Dawai.
    - Sections in this color have been explicitly approved by Dawai.
  
    #outline(
      title: [Table of Contents],
      target: heading,
    )
  ]
)
#pagebreak(weak: true)
#counter(page).update(1) // For the rest of the book, switch back to "1, 2, 3" page numbering.

/////////////////////////////////////////////////////////////////////////////////
// Recognition
/////////////////////////////////////////////////////////////////////////////////

= Revealing the Nature of Mind

== Key Point

#quote(block: true, attribution: [Tulku Urgyen Rinpoche @as-it-is-2])[
  Shantideva said, "Unless you know the secret key point, whatever you do will miss the mark."
  The secret key point of mind is that its nature is a self-existing, original wakefulness.
  To identify the key point we need to receive the pointing-out instruction.
]


=== The Practitioner is Pointed to the Nature of Mind
#include("chapters/nature-as-awareness.typ")

// Pointing out includes many subsections, all of which are in the chapter file.
#include("chapters/pointing-out.typ")

== Discerning the Implications
#include("chapters/recognition-implications.typ")

== Embracing the Larger Scope
#include("chapters/recognition-embracing.typ")

== Coming to the Decisive Conclusion
#include("chapters/recognition-decisive.typ")

/////////////////////////////////////////////////////////////////////////////////
// Familiarization
/////////////////////////////////////////////////////////////////////////////////

= #todo([Familiarizing With the View and Effortlessness])
#include("chapters/familiarization-intro.typ")

== #todo([Key Point])
#include("chapters/2-1.typ")
=== #todo([Garab Dorje's Three Statements])
#include("chapters/garab-dorje.typ")

== #todo([Discerning the Implications])
#include("chapters/familiarization-discerning.typ")
=== #todo([During Daily Activities])
#todo([TODO: how does familiarization look throughout the day (post-meditation)? Happy states, sad states, etc.])
=== #approval([The Three Modes of Liberation])
#include("chapters/three-modes.typ")
=== #approval([Tilopa's Six Words of Advice])
#include("chapters/six-nails.typ")

== #todo([Embracing the Larger Scope])
#include("chapters/familiarization-embracing.typ")
=== #todo([The Four Chokshyaks])
#include("chapters/chokshyaks.typ")
=== #todo([Distinguishing Consciousness from Wisdom])

== #todo([Coming to the Decisive Conclusion])
#include("chapters/familiarization-conclusion.typ")
=== #todo([Dzogchen Samatha-Vipassana])
#include ("chapters/dzogchen-samatha.typ")

=== #todo([Tögal])
TODO: "bindus and vajra chains via dream yoga, sky gazing, etc."

#quote(block: true, attribution: [_Reverberation of Sound_ @genuine-meaning])[ // p.158
  In reliance upon genuine bindus, the empty nature of the dharmakaya will be realized.
  Train in the dynamic strength of awareness by stimulating the luminosity of the empty bindus.
  When familiarity occurs throughout the day and night, visions will effortlessly
  appear as the extent of accomplishment.
]

=== #todo([Short Sits])
=== #todo([Complementary Practices])
==== #todo([Shifting]) // From recognizing images as awareness, sounds, thoughts, etc etc.

/////////////////////////////////////////////////////////////////////////////////
// Effortlessness
/////////////////////////////////////////////////////////////////////////////////

= #todo([Pure Effortlessness])
#include("chapters/effortlessness-intro.typ")

== #todo([Key Point])
#include("chapters/effortlessness-key-point.typ")
=== #todo([The Third Mode of Liberation TODO: Different title?])
The three modes of liberation are taking place naturally, and one
enters into the stream of nirvana for the natural exhaustion of conditioning.

#quote(block: true, attribution: [Longchenpa, _The Way of Abiding_ @way-of-abiding])[
  Whatever appears and whatever arises,\
  all things that proliferate and abide as dynamic expressions of awareness---such
  as the five emotional poisons---no matter how they arise, even as they do so
  there is recognition, perfection of their dynamic energy, and their natural
  fading, leaving no trace.
]

#quote(block: true, attribution: [_Naturally Arising Awareness_ @treasure-trove])[ // p.119
  In atiyoga, great perfection,\
  it is said that there is no fruition to achieve.\
  The fruition is not created, but occurs naturally.
]

== #todo([Discerning the Implications])
The implications are that conditioning is allowed to be freed in its own place.
Due to a lack of effort, there is a lack of karma.
The ultimate implication is that one becomes free of karma altogether,
unbinding from conditioned existence.

#quote(block: true, attribution: [Sera Khandro @lotsawa-excellent-path])[
  I relaxed momentarily\
  within great, empty awareness free from limitations,\
  the space of purity and evenness.\
  And like a dream,\
  that confused appearance faded into basic space.
]

#quote(block: true, attribution: [Jigme Lingpa @lotsawa-vajra-verses])[
  Rigpa has always been free from conceptual elaboration.\
  Conventions such as 'view', 'meditation' or 'conduct' and\
  Any clinging to them is cleared, without basis or origin.\
  Good thoughts, bad thoughts, and those in between,\
  Without slipping into any such categorization,\
  Are freed upon arising, without any agent to make distinctions.\
  As long as awareness does not lose its own ground,\
  There is no need for anything more than this.
]

== #todo([Embracing the Larger Scope])
Once karmic cycles are liberated, the enlightened mind is revealed.
This includes the four samayas and the five wisdoms in their full fruition.

#quote(block: true, attribution: [Jigme Lingpa @lotsawa-vajra-verses])[
  Remaining genuinely is the dharmakaya,\
  Accompanying awareness is the sambhogakaya,\
  And the non-duality of stillness and movement is the nirmanakaya.\
  This is what we call the "three-kaya rigpa".
]

Commenting on the above lines by Jigme Lingpa:
#quote(block: true, attribution: [Yukhok Chatralwa Chöying Rangdrol @lotsawa-vajra-verses-commentary])[
  The first line refers to remaining genuinely in the uncontrived wisdom mind of primordial purity,
  in which phenomena dissolve, the natural state of the ground, beyond confinement and liberation.
  When this 'ordinary' state of awareness is recognized just as it is, without 'changing its fur'
  or 'altering its color', then, as it is untainted by apparent objects externally and unspoiled
  by the clinging mind within, that is direct realization of the wisdom of dharmakaya, rigpa-emptiness.
  The fact that the spontaneous radiance, which is unceasing and the ground out of which samsara and nirvana
  unfold, is not blocked, but arises, while we are aware of it, is what we call the sambhogakaya.
  Even though the expressive power (_rtsal_) of compassionate energy arises as objects, if thoughts vanish
  without trace, so that there is no opportunity for habitual tendencies to form, and arising and liberation
  occur simultaneously, then we come to master the great wisdom in which there is no division between
  stillness and movement. The ceaseless arising of the display from the king-like dharmakaya beyond
  transference is said to be the nirmanakaya. The "three-kaya rigpa" is what we call
  the inseparabality of these qualities.
]

=== #todo([The Four Dzogchen Samayas])

== #todo([Coming to the Decisive Conclusion])
Effortlessness is the ultimate remedy.
One has full confidence in self-liberation. The evidence has presented itself
in the lack of conditioning. So one continues to release and trust until the
appearance of an inversion occurs. What was once self-liberating is now seen
as pure luminosity within a threshold.

This is pure Dzogchen, non-meditation.

#quote(block: true, attribution: [_Kunjed Gyalpo_ @treasure-trove])[ // p.121
  I have revealed that there is no view to cultivate in meditation.\
  I have revealed that there is no samaya to uphold.\
  I have revealed that there is no enlightened activity involving effort.\
  I have revealed that three are no paths to traverse.\
  I have revealed that there are no levels of realization to determine.\
  Timeless awareness does not entail concepts and involves no specific conduct.\
  The true nature of phenomena, just as it is, cannot be contrived.
]


/////////////////////////////////////////////////////////////////////////////////
// Liberation
/////////////////////////////////////////////////////////////////////////////////

= #todo([Complete Liberation])

== #todo([Key Point])
Enlightenment in its full fruition.

The taproot of conditioned existence, which is the conditioned self, has been uprooted.
The ignorance/confusion that initiates cyclic existence has been exhausted.
One's mind is no longer fabricating wisdom-luminosity into the reifications of the elements.
One is embraced within the tathagatagarbha, the womb and the very basis, which becomes
so familiar that it is just as safe as we once thought our sense indulgences were.

This is traditionally known as the heart essence because non-referential compassion
naturally unveils itself. Wisdom and compassion have come to their full fruition.

The first vision is realized as true emptiness/freedom from the conditioned self (11th bhumi)
and is synonymous with samyaksaṃbuddha. More specifically, this phase describes complete
freedom of the 7th egoic consciousness (mānas-vijñāna)/the conditioned pattern of apprehending
acts of consciousness (thoughts).

#quote(block: true, attribution: [Atiśa @lotsawa-casket])[
  When realizing by way of freedom from thoughts\
  This is conventionally labeled "seeing emptiness".\
  "Not seeing---that is seeing indeed"\
  So say the extremely profound sutras.\
  Here, there is no seeing and no one that sees.\
  There's no beginning or end. It is peace.\
  Entities and non-entities are relinquished,\
  It is thought-free, without focus.\
  There is no abiding and no abode,\
  Neither coming nor going, and without analogy.\
  Inexpressible and imperceptible,\
  It is unchanging, unconditioned.\
  When practitioners realize this,\
  They eradicate afflictive and cognitive obscurations.
]

== #todo([Discerning the Implications])
The five wisdoms are now in full fruition, which includes non-referential wisdom of equality,
discernment, all-accomplishing, mirror-like, and dharmadhatu as a counterpart to the five
poisons and the reifications of conditioned mind.

The lucid, intuitive mind is no longer nascent, now in the forefront, fully actualized.

#quote(block: true, attribution: [Pema Karpo @lotsawa-casket])[
  Here there is no separation at all between the object of awareness and the knower who is aware;
  they are inseparable. Moreover, the observing awareness (_rig pa_) has no identifiable essence whatsoever.
  And that is why this is classified as the unity of awareness and emptiness.
]

#quote(block: true, attribution: [His Holiness the 14th Dalai Lama @dalai-lama-dzogchen])[ // p.186
  The true, and best, mode of liberation is where thoughts are liberated without benefit or harm,
  and this is compared to a thief breaking into an empty house. There is nothing for the thief
  to steal, nothing for an empty house to lose. Even though thought arises, it does so within
  the expanse of rigpa, and owing to the energy of rigpa. When it ceases, it ceases in and of itself.
]


== #todo([Embracing the Larger Scope])
Internal, external, day, and night are pure liberation.
There is complete freedom from the cycle of re-becoming, which includes
birth, sickness, injury, and death.
One is no longer bound to conditioned existence, traditionally called samsara,
or cyclic existence.
Due to the heart essence, benefit for beings still ensnared within illusory existence
is ensured.

#quote(block: true, attribution: [Longchenpa @treasure-trove])[ // p.116
  Yogins who have realized the ultimate meaning of this great perfection in all its nakedness
  experience awareness, pure and simple, in all its nakedness. And so, while sense objects
  manifest in light of awareness, that awareness is not lost outwardly in response to those objects.
  Thus, dualistic perception, the root of samsara, is rendered null and void.
  As an indication that awareness, pure and simple, pristine in all its nakedness,
  is not lost in response to sense objects, there are no attachments to or fixations
  on sensory appearances, or attempts to suppress or indulge in them.
  Since samsara is as free as nirvana, we refer to "dharmakaya arising unobstructedly."
]

== #todo([Coming to the Decisive Conclusion])
The decisive conclusion is complete freedom.
The mind is no longer bound by cognitive and emotional obscurations.
The very last cognitive obscurations have exhausted, including the apprehension
of emptiness.

#quote(block: true, attribution: [Āryadeva's _Four Hundred Verses on the Middle Way_ @dalai-lama-dzogchen])[ // p.187
  The awareness that is the seed of existence,\
  Has objects as its sphere of activity,\
  When selflessness is seen in objects,\
  The seed of existence is destroyed.
]


= #todo([Unused Sections])
=== #todo([The Eight Consciousness Model])

/////////////////////////////////////////////////////////////////////////////////
// Bibliography
/////////////////////////////////////////////////////////////////////////////////

#bibliography(
  "bib.yml",
  style: "ieee",
)
