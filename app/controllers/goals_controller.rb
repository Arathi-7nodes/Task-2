class GoalsController < ApplicationController

before_action :set_student, only: [:show, :edit, :update, :destroy]

 def goal
      @goal=Goal.new
  end


  def Your_Goal
      @my_goal=@user.goals
  end

  def new
     @goal=Goal.new
  end

  def update
    respond_to do |format|
      if @goal.update(user_params)
        format.html { redirect_to @goal, notice: 'signup was successfully updated.' }
        format.json { render :show, status: :ok, location: @goal}
      else
        format.html { render :edit }
        format.json { render json:   @goal.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
    # binding.pry
     @goal = Goal.new(goal_params)
     @goal.user = current_user
    respond_to do |format|
      if @goal.save
        format.html { redirect_to "/wel", notice: 'goal created!!!!!!!' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
    end

   def goal_params
      params.require(:goal).permit(:title, :start_date, :completion_date)
  end



end
