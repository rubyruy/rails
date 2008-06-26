$LOAD_PATH << File.join(File.dirname(__FILE__), '..', '..', 'activesupport', 'lib')
$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'lib')

require 'test/unit'
require 'active_support'
require 'active_support/test_case'

require 'active_model/validatable'
class TestClassBase
  include ActiveModel::Validatable
  def initialize(attribs={})
    attribs.each do |attr, value|
      self.send("#{attr}=",value)
    end
  end
end