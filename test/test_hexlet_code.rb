# frozen_string_literal: true

require 'test_helper'

class TestHexletCode < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::HexletCode::VERSION
  end

  def test_tag_build
    assert_equal('<img src="path/to/image">', HexletCode::Tag.build('img', src: 'path/to/image'))
    assert_equal('<label for="email">Email</label>', HexletCode::Tag.build('label', for: 'email') { 'Email' })
  end
end
