class Bus
  attr_reader :route_number, :destination

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passangers = []
  end 

  def drive()
    return "brum"
  end  
  
  def get_passangers
    @passangers
  end

  def count_passangers
    return @passangers.count
  end 
   
  def pick_up_passangers(passanger)
    @passangers.push(passanger)
  end 

  def drop_off_passanger(passager)
    @passangers.pop()
  end 

  def empty_bus
    @passangers=[]
  end  

  def pick_up_from_stop(stop1)
    for i in stop1
      @passangers.push(i) 
    end
    return @passangers  
  end 
end   