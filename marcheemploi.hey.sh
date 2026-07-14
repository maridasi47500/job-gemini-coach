rails g scaffold job name
rails g scaffold country name
rails g scaffold region name country:references

rails g scaffold city name region:references
rails g scaffold skill name
#rails g user name email phone city:references salaire experience 
rails g scaffold employeur_type name #(esn, start-up, editeur logiciel)
rails g scaffold secteur name
rails g scaffold employeur name secteur:references employeur_type:references #(esn, start-up, editeur logiciel)

rails g scaffold canal_recrutement name city:references #(salons professionels, commaunaute tech locales)
