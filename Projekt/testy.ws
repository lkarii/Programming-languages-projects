k := (Kwadrat new) initialize: 2.
s := (Szesciokat new) initialize: 2.

Transcript show: 'Dane sa wielokaty: '; cr.
k drukuj.
s drukuj.

Transcript cr; show: 'k+t'; cr.
k1 := k + s.
k1 drukuj.

Transcript cr; show: 's+k'; cr.
s2 := s + k.
s2 drukuj.

Transcript cr; show: 'Szescian 2'; cr.
s3 := s wysrodkuj.
s3 drukuj.

Transcript cr; show: 'Kwadrat 2'; cr.
k4 := k wysrodkuj.
k4 drukuj.