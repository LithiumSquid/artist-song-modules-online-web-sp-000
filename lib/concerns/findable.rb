module Findable
module VariableMethods

@@self = []

 def initialize(name)
    @name = name
    @@self << self
  end
 
  def all
    @@self
  end
 
  def find_by_name(name)
    @@self.detect {|a| a.name == name}
  end
end
end