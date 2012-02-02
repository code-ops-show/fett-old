module AuthMacros
 def login(user)
   visit new_user_session_path
   fill_in "user_email", with: user.email
   fill_in "user_password", with: user.password
   click_button "Sign in"
   @_current_user = user
 end
 
 def current_user
   @_current_user
 end
end