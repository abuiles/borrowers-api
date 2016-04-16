class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.text :notes
      t.references :friend, index: true, foreign_key: true
      t.references :article, index: true, foreign_key: true
      t.boolean :returned

      t.timestamps null: false
    end
  end
end
