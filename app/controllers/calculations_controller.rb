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
    @rooted_number=(@user_provided_number ** (0.5)).round(2)
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
    @basis_points=params["basis_points"].to_f
    @apr=@basis_points/100
    @years=params["years"].to_f
    @principal=params["principal"].to_f
    @monthly_payment=@principal*(@apr/1200)/(1-(1+@apr/1200)**(-1*@years*12))
    render("calculations/payment.html.erb")
  end

  end
