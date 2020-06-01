class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.references :mentor, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
