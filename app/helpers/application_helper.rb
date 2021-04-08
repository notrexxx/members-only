module ApplicationHelper
  def author(post)
    @author = User.find_by(id: post.user_id).name if user_signed_in?
    @author
  end

  def user_new(_user)
    link_to 'New Post', new_post_url if user_signed_in?
  end

  def user_sign(_user)
    link_to 'Sign In', new_user_session_path unless user_signed_in?
  end

  def user_author(_user)
    'Author' if user_signed_in?
  end

  def user_logout(_user)
    link_to 'Logout', destroy_user_session_path, method: :delete if user_signed_in?
  end

  def app_notice(_notice)
    notice
  end

  def app_alert(_alert)
    alert
  end
end
