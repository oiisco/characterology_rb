# frozen_string_literal: true

# typed: true
module API
  module V1
    class Base < Grape::API
      extend T::Sig

      version 'v1', using: :path, vendor: 'api'
      default_format :json

      module Success
        sig { params(message: String).returns(JSON) }
        def self.call(object)
          { status: 'success', data: object }.to_json
        end
      end

      module Failure
        sig { params(message: String).returns(JSON) }
        def self.call(message)
          { status: 'error', messages: message }.to_json
        end
      end

      namespace :patient do
        mount Patient::Questions::Root
      end
    end
  end
end
