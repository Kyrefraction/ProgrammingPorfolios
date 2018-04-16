BorderedMorph subclass: #ExMorph
	instanceVariableNames: 'count celsius celsiusLabel inputLabel countLabel celLabel celMessage farLabel'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Assignment'!

!ExMorph methodsFor: 'action-button-actions' stamp: 'VincenzoScialpi 11/2/2017 13:35'!
buttonPressed
	count := inputLabel contents asNumber.
	countLabel contents: count asString.
	celsius := (count - 32) / 1.8.
	celsiusLabel contents: celsius asString.! !


!ExMorph methodsFor: 'initialization' stamp: 'VincenzoScialpi 11/2/2017 14:59'!
initialize
| cButton beginMessage |
super initialize.
self color: Color black.
self bounds: (0@0 corner:600@600).
count :=0.
celsius := 0.
beginMessage := 'enter degrees(F) here'.
celMessage := 'Celsius'.
celsiusLabel := StringMorph contents: celsius asString.
celsiusLabel position: 325@550.
celsiusLabel color: Color white.
inputLabel := TextMorph new.
inputLabel contents: beginMessage.
inputLabel position: 260@450.
celLabel := StringMorph contents: celMessage.
celLabel position: 325@530.
farLabel := StringMorph contents: 'Fahrenheit'.
farLabel position: 245@530.
self addMorph: farLabel.
self addMorph: celLabel.
self addMorph: inputLabel.
self addMorph: celsiusLabel.
countLabel := StringMorph contents: count asString.
countLabel position: 285@550.
countLabel color: Color white.
self addMorph: countLabel.
cButton := SimpleButtonMorph new.
cButton label: 'Convert'.
cButton color: Color pink lighter.
cButton bounds: (250@250 corner: 350@350).
cButton target: self.
cButton actionSelector:#buttonPressed.
self addMorph: cButton! !
