test "can login to page" do 
get '/login'
assert_response :success 
post '/login',
params: {username: "Mouhamadou", password: "password"}
assert_response :redirect 
follow_redirect! 
assert_response :success 
assert_select 'h1', "Hello Mouhamadou"
end 