# frozen_string_literal: true

module HexletCode
  class Tag
    def self.build(tag, hash = {})
      params = hash.map { |k, v| [k, "\"#{v}\""].join('=') }.join(' ')
      res = "<#{tag}#{params == '' ? '' : [' ', params].join}>"
      block_given? ? "#{res}#{yield}</#{tag}>" : res
    end
  end
end
