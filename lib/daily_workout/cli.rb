class DailyWorkout::CLI

  def call
    list_workouts
    menu
    goodbye
  end

  def list_workouts
    puts "Today's Workouts:"
    puts <<-DOC
    1. Legs
    2. Back
    3. Chest
    DOC
    @workouts = DailyWorkout::Workout.today
  end

  def menu
    input = nil
    while input != "exit"
        puts "Please select the desired workout by number or type list to see the workouts again or type exit to exit:"
      input = gets.strip.downcase
      case input
      when "1"
        puts "more info on Workout 1..."
      when "2"
        puts "more info on Workout 2..."
      when "3"
        puts "more info on Workout 3..."
      when "list"
        list_workouts
      else
        puts "Pick a workout or I will crush you, like a little walnut!!!"
      end
    end
  end

  def goodbye
    puts "See you tomorrow for more heart pounding, back breaking workouts!"
  end
end
