class AddCandidateIdToVote < ActiveRecord::Migration
  def change
    add_column :votes, :candidate_id, :integer
  end
end
