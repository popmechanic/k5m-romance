class AddShareholderIdToVotesAndQuestions < ActiveRecord::Migration
  def change
    add_column :votes, :shareholder_id, :integer
    add_column :questions, :shareholder_id, :integer
  end
end