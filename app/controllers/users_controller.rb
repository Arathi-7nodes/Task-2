
class UsersController < ApplicationController
before_action :set_student, only: [:show, :edit, :update, :destroy]

  def signup

    @user=User.new
    puts "form"
  end
  def login
    @user=User.new
  end

  def valid
       user = User.find_by_email(params[:user][:email])
       password=User.find_by_password(params[:user][:password])
       # binding.pry
     if user && password
        session[:user_id]=user.id
        redirect_to wel_path

      else
          redirect_to  "/signup"
      end
  end

  def Your_Goal
      @my_goal=@user.goals
  end
  def logout
      session[:user_id] = nil
      redirect_to signup_path, :notice => "Logged out"
  end


  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to  @user, notice: 'signup was successfully updated.' }
        format.json { render :show, status: :ok, location:   @user}
      else
        format.html { render :edit }
        format.json { render json:   @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def register
    # binding.pry
     @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to "/login", notice: 'Signup successfully!!!!!!!' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :signup }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
    end




   def user_params
      params.require(:user).permit(:uname, :email, :address, :phno, :password)
  end
end
