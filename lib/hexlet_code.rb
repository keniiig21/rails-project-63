# frozen_string_literal: true

require_relative 'hexlet_code/version'

module HexletCode
  autoload :Tag, 'hexlet_code/tag'

  class Error < StandardError; end

  def self.form_for(_user, options = {})
    "<form action=\"#{options[:url].nil? ? '#' : options[:url]}\" method=\"post\"></form>"
  end
end
