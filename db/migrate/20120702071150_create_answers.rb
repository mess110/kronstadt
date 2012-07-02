class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|

      t.integer :question_id
      t.string :text
      t.boolean :correct, :default => false
      t.timestamps
    end
  end
end
