# frozen_string_literal: true

module API
  module V1
    module Common
      module Questions
        class Root < Grape::API
          version 'v1', using: :path, vendor: 'api'
          format :json

          namespace :questions do
            mount Index
          end
        end
      end
    end
  end
end
