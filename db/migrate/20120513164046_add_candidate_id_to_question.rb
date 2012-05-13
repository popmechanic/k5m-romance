class AddCandidateIdToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :candidate_id, :integer
  end
end
