class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :training_sets
end
