# frozen_string_literal: true

require 'test_helper'

class TestHexletCode < Minitest::Test
  User = Struct.new(:name, :job, keyword_init: true)

  def setup
    @user = User.new(name: 'rob', job: 'Some job')
  end

  def test_that_it_has_a_version_number
    refute_nil ::HexletCode::VERSION
  end

  def test_tag_build
    assert_equal('<img src="path/to/image">', HexletCode::Tag.build('img', src: 'path/to/image'))
    assert_equal('<label for="email">Email</label>', HexletCode::Tag.build('label', for: 'email') { 'Email' })
  end

  def test_form_for_without_block
    assert_equal('<form action="#" method="post"></form>', HexletCode.form_for(@user))
    assert_equal('<form action="/users" method="post"></form>', HexletCode.form_for(@user, url: '/users'))
  end

  def test_form_for_with_block
    real_res = HexletCode.form_for(@user, url: '/users') do |f|
      f.input :name, class: 'user-input', label: 'First name'
      f.input :job, as: :text, label: 'Job'
      f.submit 'Сохранить'
    end
    expected_res = [
      '<form action="/users" method="post">',
      '<label for="name">First name</label>',
      '<input name="name" type="text" value="rob" class="user-input">',
      '<label for="job">Job</label>',
      '<textarea name="job" cols="20" rows="40">Some job</textarea>',
      '<input type="submit" value="Сохранить">',
      '</form>'
    ].join

    assert_equal(expected_res, real_res)
  end
end
