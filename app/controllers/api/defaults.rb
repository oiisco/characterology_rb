# frozen_string_literal: true

# rubocop:disable Lint/NestedMethodDefinition
# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/MethodLength
# rubocop:disable Metrics/AbcSize
module API
  module Defaults
    extend ActiveSupport::Concern

    def self.included(base)
      base.helpers do
        def set_pagination_params(page, total, per_page)
          header['X-Page'] = page.to_s
          header['X-Total'] = total.to_s
          header['X-Per-Page'] = per_page.to_s
        end

        def session
          env['rack.session']
        end

        def protect_against_forgery
          error!('Unauthorized', 401) unless verified_request?
        end

        def verified_request?
          !protect_against_forgery? || request.get? || request.head? ||
            form_authenticity_token == request.headers['X-CSRF-Token'] ||
            form_authenticity_token == request.headers['X-Csrf-Token']
        end

        def form_authenticity_token
          session[:_csrf_token] ||= SecureRandom.base64(32)
        end

        def protect_against_forgery?
          controllers_config = Rails.configuration.action_controller
          allow_forgery_protection = controllers_config.allow_forgery_protection
          allow_forgery_protection.nil? || allow_forgery_protection
        end
      end
    end
  end
end
# rubocop:enable Lint/NestedMethodDefinition
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/MethodLength
# rubocop:enable Metrics/AbcSize
