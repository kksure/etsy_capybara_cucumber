def hasItem
  visit "http://www.etsy.com/cart"
  assert_equal find(:xpath, "//div[@id='cart']/a/div[@class='count' and text()='1']").visible?, true
  #assert_equal find(:xpath, "//div[@id='checkout-header']").visible?, true
end

def removeItem
  visit "http://www.etsy.com/cart"
  find(:xpath, "//a[@rel = 'remove']").click()
end

def verifyCartIsEmpty
  visit "http://www.etsy.com/cart"
  selectOkIfDialogAppears
  assert_equal find(:xpath, "//div[@id='empty-cart']").visible?, true
  openHomePage
end