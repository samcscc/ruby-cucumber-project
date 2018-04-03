class BasePage
  include PageObject

  page_url(BASE_URL)

  text_field(:username, :class => 'loginInput')
  text_field(:password, :id => 'ctl00_MainContent_txtPassword')
  link(:login, :id => 'ctl00_MainContent_btnLogIn')

  def log_in_with(username, password)
    self.username = username
    self.password = password
    self.login
  end

  def include_text(text)
    self.wait_until(30) do
      self.text.include? text
    end
  end

end