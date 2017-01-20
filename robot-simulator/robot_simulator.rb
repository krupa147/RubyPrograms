class Robot
  def intialize
  end
  def orient(direction)
  	@coridinate_x = 0
  	@coridinate_y = 0
  	case direction
  	when :east
  	  @dir = :east
  	when :west
  	  @dir = :west
  	when :north
  	  @dir = :north
  	when :south
  	  @dir = :south
        else
          raise ArgumentError
        end
  end
  def bearing
  	@dir
  end
  def turn_right
  	case @dir
  	when :east
  	  @dir = :south
  	when :west
  	  @dir = :north
  	when :north
  	  @dir = :east
  	when :south
  	  @dir = :west
    end
  end
  def turn_left
  	case @dir
  	when :east
  	  @dir = :north
  	when :west
  	  @dir = :south
  	when :north
  	  @dir = :west
  	when :south
  	  @dir = :east
    end
  end
  def advance
  	case @dir
  	when :east
  	 @coridinate_x += 1
  	when :west
  	 @coridinate_x -= 1
  	when :north
  	 @coridinate_y += 1
  	when :south
  	 @coridinate_y -= 1
    end
  end
  def at(x,y)
  	@coridinate_x = x
  	@coridinate_y = y	
  end
  def coordinates
  	[@coridinate_x,@coridinate_y]
  end
end

class Simulator
  def initialize
  end
  def instructions(command_str)
  	commands = []
  	(0...command_str.length).each do|i|
  	  case command_str[i].upcase
  	  when 'R'
  	    commands.push(:turn_right)
  	  when 'L'
  	    commands.push(:turn_left)
  	  when 'A'
  	    commands.push(:advance) 
  	  end
  	end
  	commands
  end
  def place(robot,hash1)
  	robot.orient(hash1[:direction])
  	robot.at(hash1[:x],hash1[:y])
  end
  def evaluate(robot, command_str)
  	(0...command_str.length).each do|i|
  	  case command_str[i].upcase
  	  when 'R'
  	    robot.turn_right
  	  when 'L'
  	    robot.turn_left  	    
   	  when 'A'
  	    robot.advance  	    
  	  end
  	end
  end
end

