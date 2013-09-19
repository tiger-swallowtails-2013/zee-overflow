class CreateHeartsTable < ActiveRecord::Migration
  def up
    create_table :hearts do |t|
      t.integer :question_id
    end
  end

  def down
    drop_table :hearts
  end
end
