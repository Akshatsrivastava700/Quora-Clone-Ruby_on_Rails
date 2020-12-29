class CreateVotes < ActiveRecord::Migration[6.1]
  def change
    create_table :votes do |t|
      t.integer :upvote
      t.integer :downvote
      t.references :answer, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
