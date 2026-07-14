class CreateSecteurs < ActiveRecord::Migration[7.1]
  def change
    create_table :secteurs do |t|
      t.string :name

      t.timestamps
    end
  end
end
