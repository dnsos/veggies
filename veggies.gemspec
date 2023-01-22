# frozen_string_literal: true

require_relative "lib/veggies/version"

Gem::Specification.new do |spec|
  spec.name = "veggies"
  spec.version = Veggies::VERSION
  spec.authors = ["Dennis Ostendorf"]
  spec.email = ["dennisostendorf@proton.me"]

  spec.summary =
    "A gem that provides nutritional information about some vegetables."
  spec.description =
    "A gem that provides nutritional information about some vegetables. Note that this is a just-for-fun project."
  spec.homepage = "https://github.com/dnsos/veggies"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/dnsos/veggies"
  spec.metadata[
    "changelog_uri"
  ] = "https://github.com/dnsos/veggies/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files =
    Dir.chdir(__dir__) do
      `git ls-files -z`.split("\x0")
        .reject do |f|
          (f == __FILE__) ||
            f.match(
              %r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)}
            )
        end
    end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Dependency management
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rubocop", "~> 1.21"
  spec.add_development_dependency "standard"
  spec.add_development_dependency "syntax_tree"
  spec.add_development_dependency "minitest", "~> 5.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
