class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.references :quiz, null: false, foreign_key: true
      t.string :content
      t.jsonb :answers

      t.timestamps
    end
  end
end
