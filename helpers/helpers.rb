helpers do
  # strip @ from usernames
  def strip_prepend(username)
    username.gsub(/^@/, "")
  end

  # return sensibly-sized avatar
  def formatted_avatar(username)
    Twitter.user(username).profile_image_url.gsub("_normal", "")
  end

  # return site root
  def base_url
    @base_url ||= "#{request.env['rack.url_scheme']}://#{request.env['HTTP_HOST']}"
  end
end
