# frozen_string_literal: true

module API
  module V1
    module Common
      module Questions
        class Index < Grape::API
          desc 'Returns all exam questions'

          get '/' do
            questions = Question.order(:priority)
            present questions, with: ::Common::QuestionsEntity
          end
        end
      end
    end
  end
end
