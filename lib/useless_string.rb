require 'useless_string/version'

require 'compare_without'
require 'equal_without'
require 'without_starter'

require 'with_only_starter'

class String
  include UselessString::CompareWithout
  include UselessString::EqualWithout
  include UselessString::WithoutStarter

  include UselessString::WithOnlyStarter
end
