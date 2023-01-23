Object subclass: #Wielokat
  instanceVariableNames: 'wierzcholki nazwa '
  classVariableNames: ''
  poolDictionaries: ''
  category: 'JezykiProgramowania'!

!Wielokat methodsFor: 'initialize-release'!

initialize: liczbaWierzcholkow name: nowaNazwa
  "konstruktor obiektu - wielokata"

  nazwa:=nowaNazwa.
  wierzcholki:=Array new: liczbaWierzcholkow.
  wierzcholki at: 1 put: 0@0.! !

!Wielokat methodsFor: 'accessing'!

nazwa
  "podaje nazwe wielokata"

  ^nazwa!

  nazwa: nowa_nazwa
  "ustawia nowa nazwe wielokata"

  nazwa:=nowa_nazwa! !
  
!Wielokat methodsFor: 'actions'!

drukuj
    "drukuje informacje o wielokacie"
    | j |
    j:=wierzcholki size.
    Transcript show: 'Dana jest figura: '; show: nazwa; cr. 
    1 to: j do:
    [:i | 
    Transcript show: 'wierzcholek '; 
    show: i printString; show: ': ';
    show: (wierzcholki at: i) printString; 
    cr.
    ].
    Transcript show: 'Pole: '.
    self pole printOn: Transcript.
    Transcript cr; cr.!!



Wielokat subclass: #Kwadrat
  instanceVariableNames: ''
  classVariableNames: ''
  poolDictionaries: ''
  category: 'JezykiProgramowania'!


!Kwadrat methodsFor: 'arithmetic'!

+ figura
  "dodaj 2 figury w sensie pola"

  | p |

  p:=self pole + figura pole.
  ^(Kwadrat new) initialize: p sqrt! !

!Kwadrat methodsFor: 'actions'!

pole
  "licz pole kwadratu"

  ^(wierzcholki at: 2) x squared!
  
wysrodkuj
  "wysrodkuj kwadrat"
    
  | centerPoint diagonal |
  diagonal:=(wierzcholki at: 3) - (wierzcholki at: 1).
  centerPoint:=(wierzcholki at: 1) + (diagonal/2).
  1 to: (wierzcholki size) do: [
      :i |
      wierzcholki at: i put:((wierzcholki at: i) - centerPoint).
  ].!

!Kwadrat methodsFor: 'initialize-release'!

initialize: bok
  "tworz kwadrat o podanym boku"

  super initialize: 4 name: 'Kwadrat'.
  wierzcholki at: 2 put: bok@0.
  wierzcholki at: 3 put: bok@bok.
  wierzcholki at: 4 put: 0@bok.! !
 
 
 
Wielokat subclass: #Szesciokat
  instanceVariableNames: 'dlugosc_boku'
  classVariableNames: ''
  poolDictionaries: ''
  category: 'JezykiProgramowania'!
  
!Szesciokat methodsFor: 'arithmetic'!

+ figura
  "dodaj 2 figury w sensie pola"
| p nowybokkwadrat |

  p:=self pole + figura pole.
  nowybokkwadrat:= p * 2 / 9 * (3 sqrt).
  ^(Szesciokat new) initialize: nowybokkwadrat sqrt.! !


!Szesciokat methodsFor: 'actions'!

pole
  "licz pole szesciokatu"
  
    ^(((3 sqrt) * (dlugosc_boku squared)  * 3) / 2) !
  
wysrodkuj
  "Srodkuje szesciokat"
  wierzcholki at: 1 put: (-0.5 * dlugosc_boku)@(dlugosc_boku * ((3.0 sqrt)/-2.0)).
  wierzcholki at: 2 put: (0.5 * dlugosc_boku)@(dlugosc_boku * ((3.0 sqrt)/-2.0)).
  wierzcholki at: 3 put: (1.0 * dlugosc_boku)@0.
  wierzcholki at: 4 put: (0.5 * dlugosc_boku)@(dlugosc_boku * ((3.0 sqrt)/2.0)).
  wierzcholki at: 5 put: (-0.5 * dlugosc_boku)@(dlugosc_boku * ((3.0 sqrt)/2.0)).
  wierzcholki at: 6 put: (-1 * dlugosc_boku)@0.! !
  
  
!Szesciokat methodsFor: 'initialize-release'!

initialize: bok
  "tworz szesciokat o podanym boku"
  dlugosc_boku:=bok.
  super initialize: 6 name: 'Szesciokat'.
  wierzcholki at: 2 put: bok@0.
  wierzcholki at: 3 put: (1.5*bok)@(0.5*bok*(3 sqrt)).
  wierzcholki at: 4 put: bok@2*(bok*(3 sqrt)).
  wierzcholki at: 5 put: 0@(bok*(3 sqrt)).
  wierzcholki at: 6 put: (-0.5*bok)@(0.5*bok*(3 sqrt)).!!