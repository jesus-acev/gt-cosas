Class {
	#name : #BaselineOfGtCosas,
	#superclass : #BaselineOf,
	#category : #BaselineOfGtCosas
}

{ #category : #loading }
BaselineOfGtCosas class >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'gt-cosas' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]
]

{ #category : #baseline }
BaselineOfGtCosas >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'GtCosas'
		]
]
