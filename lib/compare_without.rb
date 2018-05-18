require 'helpers/without_helper'
module UselessString
  module CompareWithout
    include UselessString::WithoutHelper

    def cmp_without_carriage_return(other_str)
      remove_carriage_return!(str = dup, other = other_str.dup)
      str <=> other
    end

    def cmp_without_line_feed(other_str)
      remove_line_feed!(str = dup, other = other_str.dup)
      str <=> other
    end

    def cmp_without_end_of_line(other_str)
      remove_end_of_line!(str = dup, other = other_str.dup)
      str <=> other
    end

    def cmp_without_spaces(other_str)
      remove_spaces!(str = dup, other = other_str.dup)
      str <=> other
    end

    def cmp_without_numbers(other_str)
      remove_numbers!(str = dup, other = other_str.dup)
      str <=> other
    end

    def cmp_without_special_characters(other_str)
      remove_special_characters!(str = dup, other = other_str.dup)
      str <=> other
    end

    def cmp_without_alphabets(other_str)
      remove_alphabets!(str = dup, other = other_str.dup)
      str <=> other
    end

    def cmp_without_this(other_str, target)
      if target.is_a? Regexp
        remove_this_regex!(str = dup, other = other_str.dup, target)
      else
        remove_this!(str = dup, other = other_str.dup, target)
      end
      str <=> other
    end

    alias cmp_without_these cmp_without_this

    def cmp_without_theses_words(other_str, target_list, case_insensitive: true)
      remove_these_words!(str = dup,
                          other = other_str.dup,
                          target_list.dup,
                          case_insensitive)
      str <=> other
    end

    alias cmp_without_regex cmp_without_this
  end
end
