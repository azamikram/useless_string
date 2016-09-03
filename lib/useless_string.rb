require 'useless_string/version'
require 'without_helper'

class String
  include WithoutHelper

  def eql_without?(other_str, options = {})
    set_options(str = self.dup, other = other_str.dup, options)
    str == other
  end

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

  def eql_without_this?(other_str, target)
    cmp_without_this(other_str, target) == 0
  end

  alias_method :eql_without_regex?, :eql_without_this?

  def eql_without_these?(other_str, array)
    cmp_without_these(other_str, array) == 0
  end

  def cmp_without(other_str, options = {})
    set_options(str = self.dup, other = other_str.dup, options)
    str <=> other
  end

  def cmp_without_carriage_return(other_str)
    remove_carriage_return(str = self.dup, other = other_str.dup)
    str <=> other
  end

  def cmp_without_line_feed(other_str)
    remove_line_feed(str = self.dup, other = other_str.dup)
    str <=> other
  end

  def cmp_without_end_of_line(other_str)
    remove_end_of_line(str = self.dup, other = other_str.dup)
    str <=> other
  end

  def cmp_without_spaces(other_str)
    remove_spaces(str = self.dup, other = other_str.dup)
    str <=> other
  end

  def cmp_without_numbers(other_str)
    remove_numbers(str = self.dup, other = other_str.dup)
    str <=> other
  end

  def cmp_without_special_characters(other_str)
    remove_special_characters(str = self.dup, other = other_str.dup)
    str <=> other
  end

  def cmp_without_this(other_str, target)
    if target.is_a? Regexp
      remove_this_regex(str = self.dup, other = other_str.dup, target)
    else
      remove_this(str = self.dup, other = other_str.dup, target)
    end
    puts str, other
    str <=> other
  end

  alias_method :cmp_without_these, :cmp_without_this
  alias_method :cmp_without_regex, :cmp_without_this

  private
    def set_options(str, other_str, options)
      remove_carriage_return(str, other_str) if options[:carriage_return]
      remove_line_feed(str, other_str) if options[:line_feed]
      remove_end_of_line(str, other_str) if options[:end_of_line]
      remove_spaces(str, other_str) if options[:spaces]
      remove_numbers(str, other_str) if options[:numbers]
      remove_special_characters(str, other_str) if options[:special_characters]
    end
end