Class {
	#name : #CallGraphJ,
	#superclass : #Object,
	#instVars : [
		'calls'
	],
	#category : #'gt-cosas-Model'
}

{ #category : #accessing }
CallGraphJ class >> fromFile: fileName [
    ^ self new from: fileName 
]

{ #category : #accessing }
CallGraphJ >> calls [
	^ calls
]

{ #category : #accessing }
CallGraphJ >> from: fileName [
	| fileLines |
    "Lee el archivo y separa el contenido en líneas"
    fileLines := (fileName asFileReference contents) lines.
    
    "Transforma cada línea en un objeto Call y lo guarda en el slot calls"
    calls := fileLines collect: [:each | Call fromLine: each ].
    "retorna el objeto"
    ^ self
]
