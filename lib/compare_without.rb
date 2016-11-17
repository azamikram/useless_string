require 'helpers/without_helper'
module UselessString
  module CompareWithout
    include UselessString::WithoutHelper

    def cmp_without_carriage_return(other_str)
      remove_carriage_return!(str = self.dup, other = other_str.dup)
      str <=> other
    end

    def cmp_without_line_feed(other_str)
      remove_line_feed!(str = self.dup, other = other_str.dup)
      str <=> other
    end

    def cmp_without_end_of_line(other_str)
      remove_end_of_line!(str = self.dup, other = other_str.dup)
      str <=> other
    end

    def cmp_without_spaces(other_str)
      remove_spaces!(str = self.dup, other = other_str.dup)
      str <=> other
    end

    def cmp_without_numbers(other_str)
      remove_numbers!(str = self.dup, other = other_str.dup)
      str <=> other
    end

    def cmp_without_special_characters(other_str)
      remove_special_characters!(str = self.dup, other = other_str.dup)
      str <=> other
    end

    def cmp_without_alphabets(other_str)
      remove_alphabets!(str = self.dup, other = other_str.dup)
      str <=> other
    end

    def cmp_without_this(other_str, target)
      if target.is_a? Regexp
        remove_this_regex!(str = self.dup, other = other_str.dup, target)
      else
        remove_this!(str = self.dup, other = other_str.dup, target)
      end
      str <=> other
    end

    alias_method :cmp_without_these, :cmp_without_this

    def cmp_without_theses_words(other_str, array)
      remove_these_words!(str = self.dup, other = other_str.dup, array.dup)
      str <=> other
    end

    alias_method :cmp_without_regex, :cmp_without_this
  end
end