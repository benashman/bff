helpers do
  # strip @ from usernames
  def strip_prepend(username)
    username.gsub(/^@/, "")
  end

  def formatted_avatar(username)
    Twitter.user(username).profile_image_url.gsub("_normal", "")
  end

  def base_url
    @base_url ||= "#{request.env['rack.url_scheme']}://#{request.env['HTTP_HOST']}"
  end
end
