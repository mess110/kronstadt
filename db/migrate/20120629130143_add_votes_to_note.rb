class AddVotesToNote < ActiveRecord::Migration
  def change
    add_column :notes, :votes, :integer, :default => 0
    add_column :notes, :score, :real, :default => 0
  end
end
