module UselessString
  module EqualWithout

    def eql_without_carriage_return?(other_str)
      cmp_without_carriage_return(other_str) == 0
    end

    def eql_without_line_feed?(other_str)
      cmp_without_line_feed(other_str) == 0
    end

    def eql_without_end_of_line?(other_str)
      cmp_without_end_of_line(other_str) == 0
    end

    def eql_without_spaces?(other_str)
      cmp_without_spaces(other_str) == 0
    end

    def eql_without_numbers?(other_str)
      cmp_without_numbers(other_str) == 0
    end

    def eql_without_special_characters?(other_str)
      cmp_without_special_characters(other_str) == 0
    end

    def eql_without_alphabets?(other_str)
      cmp_without_alphabets(other_str)
    end

    def eql_without_this?(other_str, target)
      cmp_without_this(other_str, target) == 0
    end

    alias_method :eql_without_regex?, :eql_without_this?

    def eql_without_these?(other_str, array)
      cmp_without_these(other_str, array) == 0
    end

    def eql_without_these_words?(other_str, array)
      cmp_without_theses_words(other_str, array) == 0
    end
  end
end