class CreateCatches < ActiveRecord::Migration[6.0]
  def change
    create_table :catches do |t|
      t.integer :weight
      t.references :fish, null: false, foreign_key: true

      t.timestamps
    end
  end
end
