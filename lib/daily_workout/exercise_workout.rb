class DailyWorkout::Exercise_workout

  def self.today
    puts <<-DOC
    1. Legs
    2. Back
    3. Chest
    DOC

    workout_1 = self.new
   workout_1.name = "Legs"
   workout_1.exercises = "Smith Machine Squat, Leg Press, Goblet Squat, Barbell Reverse Lunge, Lying Leg Curls"
   workout_1.sets_and_reps = "Sets and Reps"
   workout_1.url = "https://www.bodybuilding.com/content/your-new-goal-shredded-legs-for-summer.html"

   workout_2 = self.new
   workout_2.name = "Back"
   workout_2.exercises = "Bent Over Barbell Row, Deadlifts"
   workout_2.sets_and_reps = "Sets and Reps"
   workout_2.url = "https://www.bodybuilding.com/fun/the-back-day-motivation-you-didnt-know-you-needed.html"


  end

end
