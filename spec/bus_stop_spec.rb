require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../person')
require_relative('../bus_stop')

class BusstopSpec < MiniTest::Test
  
  def test_exist
    bus_stop = Busstop.new("haymarket")
    assert_equal("haymarket", bus_stop.name)
  end 

  def test_get_queue
    bus_stop = Busstop.new("haymarket")
    bus_stop.get_queue
    assert_equal(0, bus_stop.get_queue.count)
  end

  def test_add_person_to_the_queue
    bus_stop = Busstop.new("haymarket")
    passanger1=Person.new('julia', 35)
    bus_stop.add_person_to_the_queue(passanger1)
    assert_equal(1, bus_stop.get_queue.count)
  end
end   