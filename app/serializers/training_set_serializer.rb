class TrainingSetSerializer < ActiveModel::Serializer
  attributes :id, :repetitions, :weight, :date, :exercise_name
end
