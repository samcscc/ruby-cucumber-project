require_relative 'base_page'
class SuperUserPage < BasePage

  link(:adminLink, :id => 'ctl00_MainContent_AdminNav_lnkAdminHome')
  page_url(BASE_URL + 'DataEntry/AdminInfo.aspx')

  def verify_superpage
   self.adminLink_element.exists?
  end
end



