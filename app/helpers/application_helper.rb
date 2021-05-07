module ApplicationHelper
 
  def app_nav
    if current_user 
      "<div>
        #{link_to current_user.name, user_path(current_user), class: 'btn'}
        #{link_to 'Log out', logout_path, class: 'btn'}
      </div>".to_s.html_safe
    else 
      "<div>
        #{link_to 'Sign In', login_path, class: 'btn'}
        #{link_to 'Sign Up', signup_path, class: 'btn'} 
      </div>".html_safe
    end
  end

end
