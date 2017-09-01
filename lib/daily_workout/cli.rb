class DailyWorkout::CLI

  def call
    list_workouts
    menu
    goodbye
  end

  def list_workouts
    puts "Today's Workouts:"
    @workouts = DailyWorkout::Exercise_workout.today
    @workouts.each.with_index(1) do |workout, x|
      puts "#{x}. #{workout.name} - #{workout.exercise} - #{workout.sets_and_reps}"
    end
  end

  def menu
    input = nil
    while input != "exit"
        puts "Please select the desired workout by number or type list to see the workouts again or type exit to exit:"
      input = gets.strip.downcase

      if input.to_i > 0
      the_workout = @workouts[input.to_i-1]
        puts  "#{the_workout.name} - #{the_workout.exercise} - #{the_workout.sets_and_reps}"
      elsif input == "list"
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
