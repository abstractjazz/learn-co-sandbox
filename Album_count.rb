class Album 
  
@@album_count = 0 
  
  def initialize 
    @@album_count += 1
  end 
   
  attr_accessor :release_date
 
def self.count 
  @@album_count
  end 
end 
 
 