require 'minitest/autorun'
require './lib/knight_rider'
require './lib/character'

class KnightRiderTest < Minitest::Test

  def test_it_exists
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am",
                         1982, "0.00", "https://goo.gl/lSFYQo")
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", 
                                  "A special type of hero", 1952, "1,000,000,000.00", 
                                  "https://goo.gl/Qk0pwL")                    
    kr = KnightRider.new([kitt, michael_knight], "Glen Larson", "NBC")
    assert_instance_of KnightRider, kr  
  end  

  def test_it_has_characters
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am",
                         1982, "0.00", "https://goo.gl/lSFYQo")
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", 
                                  "A special type of hero", 1952, "1,000,000,000.00", 
                                  "https://goo.gl/Qk0pwL")                             
    kr = KnightRider.new([kitt, michael_knight], "Glen Larson", "NBC")

    assert_equal [kitt, michael_knight], kr.characters
  end
    
  def test_it_has_creator
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am",
                         1982, "0.00", "https://goo.gl/lSFYQo")
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", 
                                  "A special type of hero", 1952, "1,000,000,000.00", 
                                  "https://goo.gl/Qk0pwL")                             
    kr = KnightRider.new([kitt, michael_knight], "Glen Larson", "NBC")

    assert_equal "Glen Larson", kr.creator
  end

  def test_it_has_network
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am",
                         1982, "0.00", "https://goo.gl/lSFYQo")
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", 
                                  "A special type of hero", 1952, "1,000,000,000.00", 
                                  "https://goo.gl/Qk0pwL")                             
    kr = KnightRider.new([kitt, michael_knight], "Glen Larson", "NBC")

    assert_equal "NBC", kr.network
  end

  def test_total_payroll
    kitt = Character.new("KITT", "William Daniels", 
                        "Pontiac Trans-Am", 1982, 0.00, "https://goo.gl/lSFYQo")
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", 
                                  "A special type of hero", 1952, 
                                  1000000000.00, "https://goo.gl/Qk0pwL")
    devon_miles = Character.new("Devon Miles", "Edward Mulhare",        
                                "FLAG spokesman and mission coordinator", 
                                1923, 1000000, "https://goo.gl/JsvAuV")
    kr = KnightRider.new([kitt, michael_knight, devon_miles], "Glen Larson", "NBC")
  
    assert_equal 1001000000, kr.total_payroll
  end

def test_total_highest_grossing_actor
    kitt = Character.new("KITT", "William Daniels", 
                        "Pontiac Trans-Am", 1982, 0.00, "https://goo.gl/lSFYQo")
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", 
                                  "A special type of hero", 1952, 
                                  100000000000, "https://goo.gl/Qk0pwL")
    devon_miles = Character.new("Devon Miles", "Edward Mulhare",        
                                "FLAG spokesman and mission coordinator", 
                                1923, 1000000, "https://goo.gl/JsvAuV")
    kr = KnightRider.new([kitt, michael_knight, devon_miles], "Glen Larson", "NBC")
  
    assert_equal michael_knight, kr.highest_grossing_actor.last
  end
end