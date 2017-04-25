class CalculationsController < ApplicationController
  def flex_square
    # params = {"the number"=>"25"}
    @user_provided_number=params["the_number"].to_f
    @squared_number=@user_provided_number ** 2
    render("calculations/flex_square.html.erb")
  end

  def flex_square_root
    # params = {"the number"=>"25"}
    @user_provided_number=params["the_number"].to_f
    @rooted_number=@user_provided_number ** (0.5)
    render("calculations/flex_square_root.html.erb")
  end

  def square_form
    render("calculations/square_form.html.erb")
  end

  def square
    @user_provided_number=params["user_input_square"].to_f
    @squared_number=@user_provided_number**2
    render("calculations/square.html.erb")
  end

  def square_root_form
    render("calculations/square_root_form.html.erb")
  end

  def square_root
    @user_provided_number=params["user_input_square"].to_f
    @square_root_number=Math.sqrt(@user_provided_number)
    render("calculations/square_root.html.erb")
  end

  def flexible_payment
    @principal=(params["principal"].to_f).round(0)
    @apr=params["apr"].to_f
    @years=(params["years"].to_f).round(0)
    @monthly_payment=(@principal*(@apr/1200)/(1-(1+@apr/1200)**(-1*@years*12))).round(2)
    render("calculations/flexible_payment.html.erb")
  end

  def random_number
    @low=params["low"].to_f
    @high=params["high"].to_f
    @random_number=rand(@low..@high).round(0)
    render("calculations/flexible_random.html.erb")
  end

end
