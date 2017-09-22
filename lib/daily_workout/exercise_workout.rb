class DailyWorkout::Exercise_workout
  attr_accessor :name, :exercise, :sets_and_reps, :url

  def self.today
    self.scrape_work_outs
  end

  def self.scrape_work_outs
    workouts = []

    workouts << self.scrape_body_building_1
    workouts << self.scrape_body_building_2
    workouts << self.scrape_body_building_3
    workouts << self.scrape_body_building_4

    workouts
  end

  def self.scrape_body_building_1
    doc = Nokogiri::HTML(open("https://bodybuilding.com/fun/the-back-day-motivation-you-didnt-know-you-needed.html"))

    workout = self.new
    workout.name = doc.search("h1.main-header").text.strip
    workout.exercise = doc.search("h4.dpg-h4").first.text.strip
    workout.sets_and_reps = "2 warm-up sets of 5-8 reps followed by 5 working sets of 3-5 reps (Increase the weight each set)"
    workout.url = "https://bodybuilding.com/fun/the-back-day-motivation-you-didnt-know-you-needed.html"

    workout
  end

  def self.scrape_body_building_2
    doc = Nokogiri::HTML(open("https://bodybuilding.com/fun/build-a-chest-that-stands-out-from-every-angle.html"))

    workout = self.new
    workout.name = doc.search("h1.main-header").text.strip
    workout.exercise = doc.search("h3.dpg-h3")[1].text.strip
    workout.sets_and_reps = "5 sets of 12, 10, 8, 6, 4 reps (Increase the weight each set)"
    workout.url = "https://bodybuilding.com/fun/build-a-chest-that-stands-out-from-every-angle.html"

    workout
  end

  def self.scrape_body_building_3
    doc = Nokogiri::HTML(open("https://www.bodybuilding.com/fun/sculpt-your-lower-body-with-erin-stern.html"))

    workout = self.new
    workout.name = doc.search("h1.main-header").text.strip
    workout.exercise = doc.search("h4.dpg-h4 a")[1].text.strip
    workout.sets_and_reps = "5 sets, 10 reps"
    workout.url = "https://www.bodybuilding.com/fun/sculpt-your-lower-body-with-erin-stern.html"

    workout
  end

  def self.scrape_body_building_4
    doc = Nokogiri::HTML(open("https://www.bodybuilding.com/fun/supercharge-your-shoulders-with-this-weird-exercise.html"))

    workout = self.new
    workout.name = doc.search("h1.main-header").text.strip
    workout.exercise = doc.search("h4.dpg-h4 a")[0].text.strip
    workout.sets_and_reps = "4 sets, 10, 10, 8, 8 reps (Increase the weight after your first 2 sets)"
    workout.url = "https://www.bodybuilding.com/fun/supercharge-your-shoulders-with-this-weird-exercise.html"

    workout
  end

end
