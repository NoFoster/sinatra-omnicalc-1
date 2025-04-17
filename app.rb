require "sinatra"
require "sinatra/reloader"
require "./config/environment"

get("/square/new") do

  erb(:new_square_calc)
end

get("/howdy") do

  erb(:howdy)

end

get("/square/new") do
  erb(:new_square_calc)
end

get("/square/results") do
  @the_num =params.fetch("users_number").to_f
  
  @the_result = @the_num ** 2
  erb(:square_results)
end

get("/square_root/new") do
  erb(:new_square_root_calc)
end

get("/square_root/results") do
  @the_num =params.fetch("users_number").to_f

  @the_result= @the_num ** 0.5
  erb(:square_rt_results)
end 

get("/random/new") do
  erb(:new_random_calc)
end

get("/random/results") do
  @user_min = params.fetch("user_min").to_f
  @user_max = params.fetch("user_max").to_f

  @the_result= rand(@user_min..@user_max)
erb(:random_result)
end

get ("/payment/new") do
  erb(:new_apr_calc)
end

get("/payment/results") do

  @user_apr = params.fetch("user_apr").to_f
  @user_years = params.fetch("user_years").to_f
  @user_principal = params.fetch("user_principal").to_f

  @numerator = (@user_apr / (100*12) ) * @user_principal
  @denominator = 1 - (1 + @user_apr/(100*12)) ** (-@user_years * 12)
  @the_result = @numerator / @denominator

  erb(:apr_results)
end


get("/") do
erb(:homepage)
end
