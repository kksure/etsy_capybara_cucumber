def verifySearchResultsPresent
   assert_equal find(:xpath, "//div[@id='search-header']/h1[@class='summary' and contains(text(), 'items for')]").visible?, true
end

def buyFirstItem
  find(:xpath, "//div[@id='primary']//img").click
  find(:xpath, "//span/input[@value='Add to Cart']").click
end