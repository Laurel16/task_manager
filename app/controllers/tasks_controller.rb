class TasksController < ApplicationController


  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
    @task.save
  end

  def create
    @task = Task.new(params[:task])
    if @task.save
#       redirect_to restaurant_path(@restaurant)
    else
    render :new
    end
    end

# redirect_to restaurant_path(@restaurant)

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
  params.require(:task).permit(:name, :description)
  end

end



# def set_task
#   @task= Task.find(params[:id])
# end



# before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

#   def index
#     @restaurants = Restaurant.all
#   end

#   def show
#   end

#   def new
#     @restaurant = Restaurant.new
#   end

#   def edit
#   end

#   def create
#     @restaurant = Restaurant.new(restaurant_params)
#     if @restaurant.save
#       redirect_to restaurant_path(@restaurant)
#     else
#       render :new
#     end
#   end

#   def update
#     @restaurant.update(restaurant_params)
#     redirect_to restaurant_path(@restaurant)
#   end

#   def destroy
#     @restaurant.delete
#     redirect_to restaurants_path
#   end

#   private

#   def restaurant_params
#     params.require(:restaurant).permit(:name, :address, :stars)
#   end

#   def set_restaurant
#     @restaurant = Restaurant.find(params[:id])
#   end
# end
