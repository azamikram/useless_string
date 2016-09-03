require 'useless_string/version'

class String
  def skip(other_str, options = {})
    str = self.dup
    other = other_str.dup
    set_options(str, other, options)
    str == other
  end

  def only(other_str, option)
    str   = self.dup
    other = other_str.dup

    remove_spaces(str, other) if option == :spaces

    str == other
  end

  private
    def set_options(str, other_str, options)
      remove_spaces(str, other_str) if options[:spaces]
    end

    def remove_spaces(str, other_str)
      str.gsub!(/ /, '')
      other_str.gsub!(/ /, '')
    end
end