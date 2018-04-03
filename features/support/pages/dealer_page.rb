
#Original page
# require_relative 'base_page'
# class DealerPage < BasePage
#
#   page_url(BASE_URL + 'DataEntry/DealerInfo.aspx')
#
# end


# Modified
require_relative 'base_page'
class DealerPage < BasePage

  # verifying calculator link on Dealer page.
  link(:calcLink, :id => 'ctl00_MainContent_DealerNav_lnkCalculator')
  page_url(BASE_URL + 'DataEntry/DealerInfo.aspx')


  def verify_homepage
    self.calcLink_element.exists?
  end


end