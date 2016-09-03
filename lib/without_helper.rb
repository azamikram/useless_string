module WithoutHelper
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