# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#(esn, start-up, editeur logiciel)
#rails g scaffold employeur_type name #(esn, start-up, editeur logiciel)
#rails g scaffold canal_recrutement name city_id #(salons professionels, commaunaute tech locales)

#
["technicien/ne informatique", "développeur-se web"].each do |genre_name|
  Job.find_or_create_by!(name: genre_name)
end
["informatique"].each do |genre_name|
  Secteur.find_or_create_by!(name: genre_name)
end
["ESN", "Start-up", "Editeur de logiciel"].each do |genre_name|
  EmployeurType.find_or_create_by!(name: genre_name)
end
country=Country.find_or_create_by(name: "France")
region=Region.find_or_create_by(name: "ile de france", country_id: country.id)
city=City.find_or_create_by(name: "Paris", region_id: region.id)
["Salon professionnel", "communauté tech locale"].each do |genre_name|
  CanalRecrutement.find_or_create_by!(name: genre_name, city: city)
end
