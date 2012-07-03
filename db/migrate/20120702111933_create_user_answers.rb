class CreateUserAnswers < ActiveRecord::Migration
  def change
    create_table :user_answers do |t|
      t.string :name
      t.integer :answer_id
      t.integer :question_log_id
      t.timestamps
    end
  end
end
