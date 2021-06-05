class DropCreateStrainWinesTable < ActiveRecord::Migration[6.1]
  def change

    def up
      drop_table :strain_wines 
    end 
    def down 
      raise ActiveRecord::IrreversibleMigration 
    end
  end
 
end
