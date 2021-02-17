module PostsHelper
  def show_user(post)
    render 'posts/show_user', post: post if user_signed_in?
  end
end
