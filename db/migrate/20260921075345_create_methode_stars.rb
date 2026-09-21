class CreateMethodeStars < ActiveRecord::Migration[7.1]
  def change
    create_table :methode_stars do |t|
      t.string :soft_skill_name
      t.string :situation
      t.string :tache
      t.string :action
      t.string :resultat

      t.timestamps
    end
  end
end
