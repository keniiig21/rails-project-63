# frozen_string_literal: true

require 'test_helper'

class TestHexletCode < Minitest::Test
  User = Struct.new(:name, :job, keyword_init: true)

  def test_that_it_has_a_version_number
    refute_nil ::HexletCode::VERSION
  end

  def test_tag_build
    assert_equal('<img src="path/to/image">', HexletCode::Tag.build('img', src: 'path/to/image'))
    assert_equal('<label for="email">Email</label>', HexletCode::Tag.build('label', for: 'email') { 'Email' })
  end

  def test_form_for
    user = User.new(name: 'rob')

    assert_equal('<form action="#" method="post"></form>', HexletCode.form_for(user))
    assert_equal('<form action="/users" method="post"></form>', HexletCode.form_for(user, url: '/users'))
  end
end
