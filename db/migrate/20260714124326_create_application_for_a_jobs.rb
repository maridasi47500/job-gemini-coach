class CreateApplicationForAJobs < ActiveRecord::Migration[7.1]
  def change
    create_table :application_for_a_jobs do |t|
      t.string :entreprise
      t.string :lieu
      t.string :poste
      t.string :statut
      t.date :datedenvoi
      t.date :datederelance

      t.timestamps
    end
  end
end
