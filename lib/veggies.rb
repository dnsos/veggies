# frozen_string_literal: true

require_relative "veggies/version"

module Veggies
  class Error < StandardError
  end

  class Finder
    def self.by_name(search_term)
      { name: "Carrot", protein_per_100_gram: 2 }
    end
  end
end
