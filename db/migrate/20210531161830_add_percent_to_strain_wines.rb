class AddPercentToStrainWines < ActiveRecord::Migration[6.1]
  def change
    add_column :strain_wines, :percent, :integer
  end
end
