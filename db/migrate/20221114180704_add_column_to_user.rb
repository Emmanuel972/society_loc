class AddColumnToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :utilisateur, :prénom, :string
    add_column :utilisateur, :nom_de_famille, :string
    add_column :utilisateur, :nom_utilisateur, :string
  end
end
