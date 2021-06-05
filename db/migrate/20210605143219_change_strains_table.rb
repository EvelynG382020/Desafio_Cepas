class ChangeStrainsTable < ActiveRecord::Migration[6.1]
  def change
    add_column :strains, :available, :boolean, default: true
  end
end
