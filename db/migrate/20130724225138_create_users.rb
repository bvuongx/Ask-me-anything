class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.references :question

      t.timestamps
    end
    add_index :users, :question_id
  end
end
