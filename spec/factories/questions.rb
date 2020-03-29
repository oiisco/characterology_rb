# frozen_string_literal: true

FactoryBot.define do
  factory :question do
    question_high { "Do you like basketball team #{Faker::Sports::Basketball.team}?" }
    example_high  { "Imagine #{Faker::Sports::Basketball.player} jumping high over the backboard?" }
    question_low { "Or you prefer #{Faker::Sports::Football.team} football team?" }
    example_low { "Imagine #{Faker::Sports::Football.player} kicking a ball" }
    question_type { 'e' }
  end
end
