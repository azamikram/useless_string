require 'useless_string/version'
require 'without_helper'

class String
  include WithoutHelper

  def eql_without?(other_str, options = {})
    set_options(str = self.dup, other = other_str.dup, options)
    str == other
  end

  def eql_without_carriage_return?(other_str)
    remove_carriage_return(str = self.dup, other = other_str.dup)
    str == other
  end

  def eql_without_line_feed?(other_str)
    remove_line_feed(str = self.dup, other = other_str.dup)
    str == other
  end

  def eql_without_end_of_line?(other_str)
    remove_end_of_line(str = self.dup, other = other_str.dup)
    str == other
  end

  def eql_without_spaces?(other_str)
    remove_spaces(str = self.dup, other = other_str.dup)
    str == other
  end

  def eql_without_numbers?(other_str)
    remove_numbers(str = self.dup, other = other_str.dup)
    str == other
  end

  def eql_without_special_characters?(other_str)
    remove_special_characters(str = self.dup, other = other_str.dup)
    str == other
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