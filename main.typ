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

= #todo[Revealing the Nature of Mind]

== #todo([Key Point])
=== #todo([The Practitioner is Pointed to the Nature of Mind as Awareness])
#include("chapters/nature-as-awareness.typ")

// Pointing out includes many subsections, all of which are in the chapter file.
#include("chapters/pointing-out.typ")

== #todo([Discerning the Implications])
#include("chapters/recognition-implications.typ")

== #todo([Embracing the Larger Scope])
#include("chapters/recognition-embracing.typ")

== #todo([Coming to the Decisive Conclusion])
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
=== #todo([Short Sits])
=== #todo([Complementary Practices])
==== #todo([Tögal])
==== #todo([Shifting]) // From recognizing images as awareness, sounds, thoughts, etc etc.

/////////////////////////////////////////////////////////////////////////////////
// Effortlessness
/////////////////////////////////////////////////////////////////////////////////

= #todo([Pure Effortlessness])
#include("chapters/effortlessness-intro.typ")

== #todo([Key Point])
#include("chapters/effortlessness-key-point.typ")
=== #todo([The Third Mode of Liberation])
The three modes of liberation are taking place naturally, and one
enters into the stream of nirvana for the natural exhaustion of conditioning.

== #todo([Discerning the Implications])
The implications are that conditioning is allowed to be freed in its own place.
Due to a lack of effort, there is a lack of karma.
The ultimate implication is that one becomes free of karma altogether,
unbinding from conditioned existence.

== #todo([Embracing the Larger Scope])
Once karmic cycles are liberated, the enlightened mind is revealed.
This includes the four samayas and the five wisdoms in their full fruition.

=== #todo([The Four Dzogchen Samayas])

== #todo([Coming to the Decisive Conclusion])
Effortlessness is the ultimate remedy.
One has full confidence in self-liberation. The evidence has presented itself
in the lack of conditioning. So one continues to release and trust until the
appearance of an inversion occurs. What was once self-liberating is now seen
as pure luminosity within a threshold.

This is pure Dzogchen, non-meditation.


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

== #todo([Discerning the Implications])
The five wisdoms are now in full fruition, which includes non-referential wisdom of equality,
discernment, all-accomplishing, mirror-like, and dharmadhatu as a counterpart to the five
poisons and the reifications of conditioned mind.

The lucid, intuitive mind is no longer nascent, now in the forefront, fully actualized.


== #todo([Embracing the Larger Scope])
Internal, external, day, and night are pure liberation.
There is complete freedom from the cycle of re-becoming, which includes
birth, sickness, injury, and death.
One is no longer bound to conditioned existence, traditionally called samsara,
or cyclic existence.
Due to the heart essence, benefit for beings still ensnared within illusory existence
is ensured.


== #todo([Coming to the Decisive Conclusion])
The decisive conclusion is complete freedom.
The mind is no longer bound by cognitive and emotional obscurations.
The very last cognitive obscurations have exhausted, including the apprehension
of emptiness.


= #todo([Unused Sections])
=== #todo([The Eight Consciousness Model])

/////////////////////////////////////////////////////////////////////////////////
// Bibliography
/////////////////////////////////////////////////////////////////////////////////

#bibliography(
  "bib.yml",
  style: "ieee",
)
