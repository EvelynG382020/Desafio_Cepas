class AddGradeToWine < ActiveRecord::Migration[6.1]
  def change
    add_column :wines, :grade, :integer
  end
end
