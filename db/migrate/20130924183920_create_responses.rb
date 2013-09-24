class CreateResponses < ActiveRecord::Migration
  def up
    create_table :responses do |t|
      t.integer :question_id
      t.text    :body
    end
  end

  def down
    drop_table :responses
  end
end
