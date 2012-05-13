class RenamePassword < ActiveRecord::Migration
  def change
    rename_column :shareholders, :password, :code
  end
end
