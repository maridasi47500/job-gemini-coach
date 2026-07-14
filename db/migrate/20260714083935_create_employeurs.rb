class CreateEmployeurs < ActiveRecord::Migration[7.1]
  def change
    create_table :employeurs do |t|
      t.string :name
      t.references :secteur, null: false, foreign_key: true
      t.references :employeur_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
