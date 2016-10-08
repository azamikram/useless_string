require 'useless_string/version'
require 'equal_without'
require 'compare_without'

class String
  include EqualWithout
  include CompareWithout

  def eql_without?(other_str, options = {})
    set_according_to_options(str = self.dup, other = other_str.dup, options)
    options[:case_insensitive] ? str.upcase.eql?(other.upcase) : str.eql?(other)
  end

  def cmp_without(other_str, options = {})
    set_according_to_options(str = self.dup, other = other_str.dup, options)
    options[:case_insensitive] ? str.casecmp(other) : str <=> other
  end

  private
    def set_according_to_options(str, other_str, options)
      remove_carriage_return(str, other_str) if options[:carriage_return]
      remove_line_feed(str, other_str) if options[:line_feed]
      remove_end_of_line(str, other_str) if options[:end_of_line]
      remove_spaces(str, other_str) if options[:spaces]
      remove_numbers(str, other_str) if options[:numbers]
      remove_special_characters(str, other_str) if options[:special_characters]
    end
end