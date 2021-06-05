class CreateOenologistWines < ActiveRecord::Migration[6.1]
  def change
    create_table :oenologist_wines do |t|
      t.references :oenologist, null: false, foreign_key: true
      t.references :wine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
