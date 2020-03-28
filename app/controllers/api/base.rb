# frozen_string_literal: true

# typed: strict
module API
  class Base < Grape::API
    mount API::V1::Base
  end
end
