class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.string :q_1
      t.integer :q_1_count
      t.string :q_2
      t.integer :q_2_count
      t.string :q_3
      t.integer :q_3_count
      t.string :q_4
      t.integer :q_4_count

      t.timestamps
    end
  end
end
