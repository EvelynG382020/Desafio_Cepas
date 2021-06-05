class CreateOenologists < ActiveRecord::Migration[6.1]
  def change
    create_table :oenologists do |t|
      t.string :name
      t.integer :age
      t.string :nationality
      t.boolean :editor
      t.boolean :writer
      t.boolean :reviewer

      t.timestamps
    end
  end
end
