class CreateRounds < ActiveRecord::Migration[6.0]
  def change
    create_table :rounds do |t|
      t.string :par
      t.string :score
      t.references :course, null: false, foreign_key: true 
      t.references :user, null: false, foreign_key: true 

      t.timestamps
    end
  end
end
