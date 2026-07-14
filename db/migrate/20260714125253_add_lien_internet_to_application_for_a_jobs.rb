class AddLienInternetToApplicationForAJobs < ActiveRecord::Migration[7.1]
  def change
    add_column :application_for_a_jobs, :lien_internet, :string
    add_column :application_for_a_jobs, :contact, :string
    add_column :application_for_a_jobs, :date_dernier_contact, :date
    add_column :application_for_a_jobs, :detail_offre, :text
    add_column :application_for_a_jobs, :commentaire, :string
  end
end
