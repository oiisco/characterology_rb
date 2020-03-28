# frozen_string_literal: true

# typed: strict
Rails.application.routes.draw do
  mount API::Base => '/api'
end
