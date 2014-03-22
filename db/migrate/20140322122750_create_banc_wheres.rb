class CreateBancWheres < ActiveRecord::Migration
  def change
    create_table :banc_wheres do |t|
      t.integer :n_rue
      t.text :adress
      t.integer :code_postal
      t.string :ville

      t.timestamps
    end
  end
end
