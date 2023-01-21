# frozen_string_literal: true

require "test_helper"

class TestVeggies < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Veggies::VERSION
  end

  def test_it_does_something_useful
    assert_equal Veggies::Finder.by_name("Carrot"),
                 { name: "Carrot", protein_per_100_gram: 2 }
  end
end
