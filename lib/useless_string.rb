require 'useless_string/version'

class String
  def skip(other_str, options = {})
    str = self.dup
    other = other_str.dup
    set_options(str, other, options)
    str == other
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

    def remove_carriage_return(str, other_str)
      str.gsub!(/\r/, '')
      other_str.gsub!(/\r/, '')
    end

    def remove_line_feed(str, other_str)
      str.gsub!(/\n/, '')
      other_str.gsub!(/\n/, '')
    end

    def remove_end_of_line(str, other_str)
      str.gsub!(/\r\n/, '')
      other_str.gsub!(/\r\n/, '')
    end

    def remove_spaces(str, other_str)
      str.gsub!(/ /, '')
      other_str.gsub!(/ /, '')
    end

    def remove_numbers(str, other_str)
      str.gsub!(/\d/, '')
      other_str.gsub!(/\d/, '')
    end

    def remove_special_characters(str, other_str)
      str.gsub!(/[^\da-z]+/i, '')
      other_str.gsub!(/[^\da-z]+/i, '')
    end
end