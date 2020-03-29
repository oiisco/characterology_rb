# frozen_string_literal: true
class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text(:question_high, null: false)
      t.text(:example_high)
      t.text(:question_low, null: false)
      t.text(:example_low)
      t.integer(:priority, null: false)
      t.string(:question_type, null: false, limit: false)

      t.timestamps
    end
  end
end
