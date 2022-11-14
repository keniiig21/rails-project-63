# frozen_string_literal: true

module HexletCode
  class FormBuilder
    attr_accessor :result

    def initialize(user)
      @user = user
      @result = []
    end

    def input(field, options = {})
      as = options.delete(:as)
      return textarea(field, options) if as.to_s == 'text'

      opts = { name: field, type: 'text', value: @user.public_send(field) }
      opts.merge!(options)
      @result << HexletCode::Tag.build('input', opts)
      @result.join
    end

    def textarea(field, options = {})
      opts = { name: field }
      options[:cols] ||= 20
      options[:rows] ||= 40
      opts.merge!(options)
      @result << HexletCode::Tag.build('textarea', opts) { @user.public_send(field) }
      @result.join
    end
  end
end
