class CreateMagazineOenologists < ActiveRecord::Migration[6.1]
  def change
    create_table :magazine_oenologists do |t|
      t.references :magazine, null: false, foreign_key: true
      t.references :oenologist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
