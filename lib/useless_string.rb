require 'useless_string/version'

require 'compare_without'
require 'equal_without'
require 'without_starter'

require 'compare_with_only'
require 'equal_with_only'
require 'with_only_starter'

class String
  include UselessString::CompareWithout
  include UselessString::EqualWithout
  include UselessString::WithoutStarter

  include UselessString::CompareWithOnly
  include UselessString::EqualWithOnly
  include UselessString::WithOnlyStarter
end