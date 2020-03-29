# frozen_string_literal: true

module Common
  class QuestionsEntity < Entity
    expose :id
    expose :high do
      expose :question_high, as: :question
      expose :example_high, as: :example
    end
    expose :low do
      expose :question_low, as: :question
      expose :example_low, as: :example
    end
    expose :priority
    expose :question_type
  end
end
