# frozen_string_literal: true

module API
  module V1
    module Patient
      module Questions
        class Index < Grape::API
          desc 'Returns all exam questions'

          get '/' do
            Question.order(:priority)
          end
        end
      end
    end
  end
end
