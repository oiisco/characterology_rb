# frozen_string_literal: true

# typed: strict
class ApplicationMailer < ActionMailer::Base
  default from: 'system@charakterologia.pl'
  layout 'mailer'
end
