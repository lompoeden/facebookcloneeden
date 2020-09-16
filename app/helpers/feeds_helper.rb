module FeedsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  def confirm_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_feeds_path
    elsif action_name == 'edit' || action_name == 'update'
      # render confirm_feed_path(@feed.id)
      feed_path
    end
  end
  def confirm_form_method
    @feed.id ? 'patch' : 'post' # 作成時はpost, 編集時は patchを指定
  end
end
