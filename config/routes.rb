Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get("/flexible/square/:the_number",
{:controller=>"calculations",
:action=>"flex_square"})

get("/flexible/square_root/:the_number",
{:controller=>"calculations",
:action=>"flex_square_root"})

get("/square/new",
{:controller=>"calculations",
:action=>"square_form"})

get("/square/results",
{:controller=>"calculations",
:action=>"square"})

get("/square_root/new",
{:controller=>"calculations",
:action=>"square_root_form"})

get("/square_root/results",
{:controller=>"calculations",
:action=>"square_root"})

get("/flexible_payment/:apr/:years/:principal",
{:controller=>"calculations",
:action=>"flexible_payment"})

get("/flexible_random/:low/:high",
{:controller=>"calculations",
:action=>"random_number"})

end
