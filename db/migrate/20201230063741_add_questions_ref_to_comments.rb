class AddQuestionsRefToComments < ActiveRecord::Migration[6.1]
  def change
    add_reference :comments, :question, null: false, foreign_key: true
  end
end
