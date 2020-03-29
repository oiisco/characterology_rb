# frozen_string_literal: true

module API
  class Base < Grape::API
    include API::Defaults

    before do
      protect_against_forgery
    end

    mount API::V1::Base
  end
end
