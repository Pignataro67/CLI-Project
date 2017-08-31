class DailyWorkout::CLI

  def call
    puts "Today's Workouts:"
    list_workouts
    menu
    good_bye
  end

  def list_workouts
    puts <<-DOC
    1. Legs
    2. Back
    3. Chest
    DOC
  end

  def menu
    puts "Please select the desired workout by number or type list to see the workouts again or type exit to exit:"
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "1"
        puts "more info on Workout 1..."
      when "2"
        puts "more info on Workout 2..."
      when "3"
        puts "more info on Workout 3..."
      end
    end
  end

  def goodbye
    puts "See you tomorrow for more heart pounding, back breaking workouts!"
  end
end
