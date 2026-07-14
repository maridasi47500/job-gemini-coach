class CreateIkigaiMethodes < ActiveRecord::Migration[7.1]
  def change
    create_table :ikigai_methodes do |t|
      t.string :vocation
      t.string :profession
      t.string :passion
      t.string :mission
      t.string :aimer
      t.string :doue
      t.string :besoin
      t.string :paye

      t.timestamps
    end
  end
end
