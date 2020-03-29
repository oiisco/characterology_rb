# frozen_string_literal: true

class Entity < Grape::Entity
  format_with(:string, &:to_s)
  format_with(:integer, &:to_i)
  format_with(:integer_or_nil) { |val| val.nil? ? nil : val.to_i }
  format_with(:float, &:to_f)
  format_with(:float_or_nil) { |val| val.nil? ? nil : val.to_f }
  format_with(:bool) { |val| to_boolean(val) }
  format_with(:array, &:to_a)
  format_with(:json, &:to_json)
  format_with(:datetime) { |dt| dt.nil? ? nil : dt.iso8601 }
  format_with(:pretty_datetime) { |dt| dt.try(:strftime, '%d-%m-%Y %H:%M') }
  format_with(:date) { |dt| dt.nil? ? nil : dt.strftime('%d-%m-%Y') }
  format_with(:hash, &:to_h)

  def self.expose(name, options = {}, &block)
    constant = options.delete(:constant)
    block = ->(_, _) { constant } unless constant.nil? || block_given?
    super(name, options, &block)
  end

  private

  def to_boolean(str)
    [true, 'true'].include?(str)
  end
end
