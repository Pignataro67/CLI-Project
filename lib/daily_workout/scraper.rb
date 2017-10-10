class DailyWorkout::Scraper

  def self.scrape_work_outs

    self.scrape_body_building_1
    self.scrape_body_building_2
    self.scrape_body_building_3
    self.scrape_body_building_4
    self.scrape_body_building_5

  end

  def self.scrape_body_building_1
    doc = Nokogiri::HTML(open("https://bodybuilding.com/fun/the-back-day-motivation-you-didnt-know-you-needed.html"))

    workout = DailyWorkout::Exercise_workout.new
    workout.name = doc.search("h1.main-header").text.strip << ("!")
    workout.exercise = doc.search("h4.dpg-h4").first.text.strip
    workout.sets_and_reps = "Start with a weight that's 1/2 your bodyweight, for 2 warm-up sets of 5-8 reps followed by 5 working sets of 3-5 reps (Increase the weight each set)"
    workout.url = "https://bodybuilding.com/fun/the-back-day-motivation-you-didnt-know-you-needed.html"

  end

  def self.scrape_body_building_2
    doc = Nokogiri::HTML(open("https://bodybuilding.com/fun/build-a-chest-that-stands-out-from-every-angle.html"))

    workout = DailyWorkout::Exercise_workout.new
    workout.name = doc.search("h1.main-header").text.strip
    workout.exercise = doc.search("h3.dpg-h3")[1].text.strip
    workout.sets_and_reps = "Start with a weight that's 1/2 your bodyweight, for 5 sets of 12, 10, 8, 6, 4 reps (Increase the weight each set)"
    workout.url = "https://bodybuilding.com/fun/build-a-chest-that-stands-out-from-every-angle.html"

  end

  def self.scrape_body_building_3
    doc = Nokogiri::HTML(open("https://www.bodybuilding.com/fun/sculpt-your-lower-body-with-erin-stern.html"))

    workout = DailyWorkout::Exercise_workout.new
    workout.name = doc.search("h1.main-header").text.strip
    workout.exercise = doc.search("h4.dpg-h4 a")[1].text.strip
    workout.sets_and_reps = "Start with a weight that's 1/2 your bodyweight, for 5 sets of 10 reps"
    workout.url = "https://www.bodybuilding.com/fun/sculpt-your-lower-body-with-erin-stern.html"

  end

  def self.scrape_body_building_4
    doc = Nokogiri::HTML(open("https://www.bodybuilding.com/fun/supercharge-your-shoulders-with-this-weird-exercise.html"))

    workout = DailyWorkout::Exercise_workout.new
    workout.name = doc.search("h1.main-header").text.strip << ("!")
    workout.exercise = doc.search("h4.dpg-h4 a")[0].text.strip
    workout.sets_and_reps = "4 sets, 10, 10, 8, 8 reps Find a weight that you are comfortable with for 10 reps, then increase the weight after your first 2 sets"
    workout.url = "https://www.bodybuilding.com/fun/supercharge-your-shoulders-with-this-weird-exercise.html"

  end

  def self.scrape_body_building_5
    doc = Nokogiri::HTML(open("https://www.bodybuilding.com/fun/the-one-month-six-pack-program.html"))

    workout = DailyWorkout::Exercise_workout.new
    workout.name = doc.search("h1.main-header").text.strip
    workout.exercise = doc.search("h4.dpg-h4 a")[10].text.strip
    workout.sets_and_reps = "3 sets of 30 seconds each set"
    workout.url = "https://www.bodybuilding.com/fun/the-one-month-six-pack-program.html"

  end
end
