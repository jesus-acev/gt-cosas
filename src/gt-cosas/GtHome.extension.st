Extension { #name : #GtHome }

{ #category : #'*gt-cosas' }
GtHome >> gtCosasSection [
	<gtHomeSection>
	^ GtHomeStartPageSection new
		title: 'Repositorio de Jesus';
		description: 'Experimentando con GT';
		databaseName: 'jesus-acev/gt-cosas/lepiter';
		startPageName: 'Pagina Inicio Repo Jesus';
		priority: 8
]
