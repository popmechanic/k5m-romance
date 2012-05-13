class CreateShareholders < ActiveRecord::Migration
  def change
    create_table :shareholders do |t|
      t.integer :shares
      t.string :password

      t.timestamps
    end
  end
end
