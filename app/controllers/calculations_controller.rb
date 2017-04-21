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

end
