class CreateQuestionLogs < ActiveRecord::Migration
  def change
    create_table :question_logs do |t|

      t.boolean :finished, :default => false
      t.integer :question_id
      t.timestamps
    end
  end
end
