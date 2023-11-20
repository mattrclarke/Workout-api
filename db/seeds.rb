
TrainingSet.delete_all
User.delete_all

# Create users
xandy = User.create(name: "Xandy")
daddy = User.create(name: "Daddy")

# Create exercises
# crab_walk = Exercise.create(name: "Crab walk", description: "Description of the Crab walk exercise.")
# squat = Exercise.create(name: "Squat", description: "Description of the Squat exercise.")
# plank = Exercise.create(name: "Plank", description: "Description of the Plank exercise.")
# sit_up = Exercise.create(name: "Sit up", description: "Description of the Sit up exercise.")

# # Create training sets with progressive improvements
def create_training_sets(user)
  exercises = ["Crab walk", "Squat", "Plank", "Sit up", "Push up"]
  exercises.each do |exercise|
    10.times do |i|
      repetitions = (20..50).to_a.shuffle.first # Increase repetitions progressively
      weight = (20..50).to_a.shuffle.first# Increase weight progressively
      date = Date.today - i.days # Use different dates for each set

      TrainingSet.create(repetitions: repetitions, weight: weight, date: date,  user: user,  exercise_name: exercise)
    end
  end
end

# # Create progressive sets for Xandy
create_training_sets(xandy)
create_training_sets(daddy)

# # Create progressive sets for Daddy
# create_training_sets(daddy, plank)