class TrainingSetsController < ApplicationController
  def index
    training_sets =  TrainingSet.where(user_id: params[:user_id])
    render json: training_sets
  end

  def show
    training_set = TrainingSet.find(params[:id])
    render json: training_set
  end

  def create
    training_set = TrainingSet.new(training_set_params)
    if training_set.save
      render json: training_set, status: :created
    else
      render json: training_set.errors, status: :unprocessable_entity
    end
  end

  def update
    training_set = TrainingSet.find(params[:id])
    if training_set.update(training_set_params)
      render json: training_set
    else
      render json: training_set.errors, status: :unprocessable_entity
    end
  end

  def destroy
    training_set = TrainingSet.find(params[:id])
    training_set.destroy
    head :no_content
  end

  private

  def training_set_params
    params.require(:training_set).permit(:user_id, :repetitions, :weight, :date, :exercise_name)
  end
  
end
