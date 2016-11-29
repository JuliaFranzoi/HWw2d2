require('minitest/autorun')
require('minitest/rg')
require_relative('../person')

class PersonSpec < MiniTest::Test
  
  def test_exist
    person = Person.new('julia', 35)
    assert_equal('julia', person.name)
    assert_equal(35, person.age)
  end  
end 