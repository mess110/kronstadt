class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :text

      t.timestamps
    end
  end
end
