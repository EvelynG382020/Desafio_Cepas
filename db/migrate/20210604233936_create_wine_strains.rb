class CreateWineStrains < ActiveRecord::Migration[6.1]
  def change
    create_table :wine_strains do |t|
      t.integer :percentage
      t.references :strain, null: false, foreign_key: true
      t.references :wine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
