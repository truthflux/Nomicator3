class SessionsController < ApplicationController
<<<<<<< Updated upstream

=======
>>>>>>> Stashed changes
  def new
  end

  def create
<<<<<<< Updated upstream
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_back_or user
    else
      flash.now[:error] = 'Invalid email/password combination'
=======
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid password or no such user' # Not quite right!
>>>>>>> Stashed changes
      render 'new'
    end
  end

<<<<<<< Updated upstream
=======

>>>>>>> Stashed changes
  def destroy
    sign_out
    redirect_to root_url
  end
<<<<<<< Updated upstream


=======
>>>>>>> Stashed changes
end
