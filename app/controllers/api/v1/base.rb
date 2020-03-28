module API
  module V1
    class Base < Grape::API
      version 'v1', using: :path, vendor: 'api'
      default_format :json

      module Success
        def self.call(object, _env)
          { status: 'success', data: object }.to_json
        end
      end

      module Failure
        def self.call(message, _backtrace, _options, _env)
          { status: 'error', messages: message }.to_json
        end
      end

      namespace :patient do
        mount Patient::Questions::Root
      end
    end
  end
end