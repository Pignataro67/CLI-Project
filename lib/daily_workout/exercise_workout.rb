class DailyWorkout::Exercise_workout
  attr_accessor :name, :exercise, :sets_and_reps, :url

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end
end
