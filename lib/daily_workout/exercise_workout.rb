class DailyWorkout::Exercise_workout
  attr_accessor :name, :exercise, :sets_and_reps, :url

  def self.today
    self.scrape_work_outs
  end

  def self.scrape_work_outs
    workouts = []

    workouts << self.scrape_body_building

    workouts
  end

  def self.scrape_body_building
    doc = Nokogiri::HTML(open("https://bodybuilding.com/fun/the-back-day-motivation-you-didnt-know-you-needed.html"))

    workout = self.new
    workout.name = doc.search("h1.main-header").text
    workout.exercise = doc.search("div.dpgpt-content a").text
    workout.sets_and_reps = "2 warm-up sets of 8-10 reps followed by 5 working sets of 8-10 reps"
    workout
    #binding.pry
  end
end
