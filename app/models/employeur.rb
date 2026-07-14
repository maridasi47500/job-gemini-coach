class Employeur < ApplicationRecord
  belongs_to :secteur
  belongs_to :employeur_type
end
