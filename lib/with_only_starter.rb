module UselessString
  module WithOnlyStarter
    def eql_with_only?(other_str, options = {})
      remove_extras(str = dup, other = other_str.dup, create_regex(options))
      options[:case_insensitive] ? str.casecmp(other.upcase).zero? : str.eql?(other)
    end

    def cmp_with_only(other_str, options = {})
      remove_extras(str = dup, other = other_str.dup, create_regex(options))
      options[:case_insensitive] ? str.casecmp(other) : str <=> other
    end

    private

    def create_regex(options)
      reg = '[^'
      reg += '\d' if options[:numbers]
      reg += 'a-zA-Z' if options[:alphabets]
      reg += ']'
      Regexp.new(reg)
    end

    def remove_extras(str, other_str, regex)
      str.gsub!(regex, '')
      other_str.gsub!(regex, '')
    end
  end
end
