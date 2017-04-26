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
    @user_provided_apr=params["basis_points"].to_f/100
    @user_provided_years=params["years"].to_f
    @user_provided_principal=params["principal"].to_f
    @monthly_payment=((@user_provided_principal*(@user_provided_apr/1200))/(1-(1+@user_provided_apr/1200)**(-1*@user_provided_years*12))).round(2)
    render("calculations/payment.html.erb")
  end

  def payment
    @user_provided_apr=params["user_input_apr"].to_f/100
    @user_provided_years=params["user_input_years"].to_f
    @user_provided_principal=params["user_input_principal"].to_f
    @monthly_payment=((@user_provided_principal*(@user_provided_apr/1200))/(1-(1+@user_provided_apr/1200)**(-1*@user_provided_years*12))).round(2)
    render("calculations/payment.html.erb")
  end

  end
