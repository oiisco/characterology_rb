# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'system@charakterologia.pl'
  layout 'mailer'
end
