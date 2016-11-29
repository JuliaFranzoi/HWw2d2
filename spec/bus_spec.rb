require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../person')
require_relative('../bus_stop')

class BusSpec < MiniTest::Test
  
  def test_exist
    bus = Bus.new(22, 'ocean terminal')
    assert_equal(22, bus.route_number)
    assert_equal('ocean terminal', bus.destination)
  end  


  def test_drive_method
    bus = Bus.new(22, 'ocean terminal')
    
    assert_equal("brum", bus.drive())
  end  

  def test_has_passangers
    bus = Bus.new(22, 'ocean terminal')
    bus.get_passangers()
    assert_equal(0, bus.get_passangers.count)
  end 

  def test_count_passangers
    bus = Bus.new(22, 'ocean terminal')
    assert_equal(0, bus.count_passangers)
  end  
  
  def test_add_passangers
    bus = Bus.new(22, 'ocean terminal')
    passanger1 = Person.new('julia','35')
    bus.pick_up_passangers(passanger1)
    assert_equal(1, bus.count_passangers)
  end

  def test_drop_off_passanger
    bus = Bus.new(22, 'ocean terminal')
    passanger1 = Person.new('julia','35')
    passanger2 = Person.new('lorna','35')

    bus.pick_up_passangers(passanger1)
    bus.pick_up_passangers(passanger2)

    bus.drop_off_passanger(passanger2)

    assert_equal(1, bus.count_passangers)
  end
  
  def test_empty_bus
    bus = Bus.new(22, 'ocean terminal')
    passanger1 = Person.new('julia','35')
    passanger2 = Person.new('lorna','35')

    bus.pick_up_passangers(passanger1)
    bus.pick_up_passangers(passanger2)

    bus.empty_bus()

    assert_equal(0, bus.count_passangers)
  end

  def test_pick_up_from_stop
    bus = Bus.new(22, 'ocean terminal')
    bus_stop = Busstop.new ('haymarket') 
    passanger1 = Person.new('julia','35')
    passanger2 = Person.new('lorna','35')
     
    bus_stop.add_person_to_the_queue(passanger1)
    bus_stop.add_person_to_the_queue(passanger2)
  


    stop1 = bus_stop.get_queue
    bus.pick_up_from_stop(stop1)
    bus_stop.empty_queue
    assert_equal(2, bus.count_passangers)
    assert_equal(0, bus_stop.get_queue.count)
  end


end