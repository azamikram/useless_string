module UselessString
  module WithoutHelper
    def remove_carriage_return!(str, other_str)
      remove_this_regex!(str, other_str, /\r/)
    end

    def remove_line_feed!(str, other_str)
      remove_this_regex!(str, other_str, /\n/)
    end

    def remove_end_of_line!(str, other_str)
      remove_this_regex!(str, other_str, /\r\n/)
    end

    def remove_spaces!(str, other_str)
      remove_this_regex!(str, other_str, / /)
    end

    def remove_numbers!(str, other_str)
      remove_this_regex!(str, other_str, /\d/)
    end

    def remove_special_characters!(str, other_str)
      remove_this_regex!(str, other_str, /[^\da-z]+/i)
    end

    def remove_alphabets!(str, other_str)
      remove_this_regex!(str, other_str, /[a-z]+/i)
    end

    def remove_this!(str, other_str, target)
      remove_this_regex!(str, other_str, /#{target.to_s}/)
    end

    def remove_this_regex!(str, other_str, regex)
      str.gsub!(regex, '')
      other_str.gsub!(regex, '')
    end

    def remove_these_words!(str, other_str, array)
      array.map { |w| Regexp.escape(w) }
      remove_this_regex!(str, other_str, Regexp.union(array))
    end
  end
end