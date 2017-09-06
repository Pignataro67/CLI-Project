class DailyWorkout::Exercise_workout
  attr_accessor :name, :exercise, :sets_and_reps, :url

  def self.today
    self.scrape_work_outs
  end

  def self.scrape_work_outs
    workouts = []

    workouts << self.scrape_body_building_1
    workouts << self.scrape_body_building_2

    workouts
  end

  def self.scrape_body_building_1
    doc = Nokogiri::HTML(open("https://bodybuilding.com/fun/the-back-day-motivation-you-didnt-know-you-needed.html"))

    workout = self.new
    workout.name = doc.search("h1.main-header").text
    workout.exercise = doc.search("div.dpgpt-content a").text
    workout.sets_and_reps = "2 warm-up sets of 8-10 reps followed by 5 working sets of 8-10 reps"
    workout.url = "https://bodybuilding.com/fun/the-back-day-motivation-you-didnt-know-you-needed.html"

    workout
    #binding.pry
  end

  def self.scrape_body_building_2
    doc = Nokogiri::HTML(open("https://bodybuilding.com/fun/build-a-chest-that-stands-out-from-every-angle.html"))

    workout = self.new
    workout.name = doc.search("h1.main-header").text
    workout.exercise = doc.search("h3.dpg-h3").text
    workout.sets_and_reps = "5 sets of 12, 10, 8, 6, 4 reps"
    workout.url = "https://bodybuilding.com/fun/build-a-chest-that-stands-out-from-every-angle.html"

    workout
  end
end
