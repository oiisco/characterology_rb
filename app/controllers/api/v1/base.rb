# frozen_string_literal: true

module API
  module V1
    class Base < Grape::API
      version 'v1', using: :path, vendor: 'api'
      default_format :json

      module Success
        def self.call(object)
          { status: 'success', data: object }.to_json
        end
      end

      module Failure
        def self.call(message)
          { status: 'error', messages: message }.to_json
        end
      end

      namespace :common do
        mount Common::Questions::Root
      end
    end
  end
end
