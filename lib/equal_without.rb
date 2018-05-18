module UselessString
  module EqualWithout
    def eql_without_carriage_return?(other_str)
      cmp_without_carriage_return(other_str).zero?
    end

    def eql_without_line_feed?(other_str)
      cmp_without_line_feed(other_str).zero?
    end

    def eql_without_end_of_line?(other_str)
      cmp_without_end_of_line(other_str).zero?
    end

    def eql_without_spaces?(other_str)
      cmp_without_spaces(other_str).zero?
    end

    def eql_without_numbers?(other_str)
      cmp_without_numbers(other_str).zero?
    end

    def eql_without_special_characters?(other_str)
      cmp_without_special_characters(other_str).zero?
    end

    def eql_without_alphabets?(other_str)
      cmp_without_alphabets(other_str)
    end

    def eql_without_this?(other_str, target)
      cmp_without_this(other_str, target).zero?
    end

    alias eql_without_regex? eql_without_this?

    def eql_without_these_words?(other_str, target_list, case_insensitive: true)
      cmp_without_theses_words(other_str, target_list, case_insensitive).zero?
    end

    alias eql_without_these? eql_without_these_words?
  end
end
