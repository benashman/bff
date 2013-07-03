helpers do
  # strip @ from usernames
  def strip_prepend(username)
    username.gsub(/^@/, "")
  end
end
