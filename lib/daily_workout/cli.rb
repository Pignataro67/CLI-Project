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
      puts "#{x}. #{workout.name}"
    end
  end

  def menu
    input = nil
    while input != "exit"
        puts "Please select the desired workout by number or type list to see the workouts again or type exit to exit:"
      input = gets.strip.downcase

      if input.to_i.between?(1, 5)
        the_workout = @workouts[input.to_i-1]
        puts  "#{the_workout.name} - #{the_workout.exercise} - #{the_workout.sets_and_reps}"
      elsif input == "list"
        list_workouts
      elsif input == "exit"
      else
        puts "Don't you want to workout?!?"
        sleep(2)
        puts "IT DOESN'T MATTER IF YOU WANT TO WORKOUT, you're going to workout, IF YOU SMELLLL, WHAT P, A, T, IS COOKIN'!!!"
      end
    end
  end

  def goodbye
      puts "See you tomorrow for more heart pounding, back breaking workouts!"
  end
end
