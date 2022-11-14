# frozen_string_literal: true

require_relative 'hexlet_code/version'

module HexletCode
  autoload :Tag, 'hexlet_code/tag'
  autoload :FormBuilder, 'hexlet_code/form_builder'

  class Error < StandardError; end

  def self.form_for(user, options = {})
    action = options[:url].nil? ? '#' : options[:url]
    "<form action=\"#{action}\" method=\"post\">#{yield HexletCode::FormBuilder.new(user) if block_given?}</form>"
  end
end
