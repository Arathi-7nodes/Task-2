
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
     if user && password
           redirect_to "/wel"
      else
          redirect_to  "/signup"
      end
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

  def create
    # binding.pry
     @user = User.new(user_params)
    if @user.save
      redirect_to "/signup"
    end
  end


   def user_params
  params.require(:user).permit(:uname, :email, :address, :phno, :password)
  end

end
