require 'cellane_palindrome/version'

module Palindrome
  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end

  private

  def processed_content
    to_s.scan(/[a-z0-9]/i).join.downcase
  end
end

class String
  include Palindrome
end

class Integer
  include Palindrome
end
