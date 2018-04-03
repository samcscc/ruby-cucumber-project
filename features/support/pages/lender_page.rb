require_relative 'base_page'
class LenderPage < BasePage
  link(:newLink, :id => 'ctl00_MainContent_btnAdd1')
  page_url(BASE_URL + '/DataEntry/LenderInfo.aspx')

  def verify_lederPage
    self.newLink_element.exists?
  end

end