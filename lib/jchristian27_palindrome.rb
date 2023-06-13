# frozen_string_literal: true

require "Jchristian27_palindrome/version"

module Jchristian27Palindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

  # Returns content for palindrome testing.
  def processed_content
    self.to_s.scan(/[a-z\d]/i).join.downcase
  end
end

class String
  include Jchristian27Palindrome
end

class Integer
  include Jchristian27Palindrome
end
