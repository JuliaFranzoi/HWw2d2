class Busstop
  attr_reader :name 


  def initialize (name)
    @name = name
    @queue = []
  end
    
  def get_queue
    @queue
  end    
  
  def add_person_to_the_queue(passanger)
    return @queue.push(passanger)
  end  
  
  def empty_queue
    @queue = []
  end

end    
