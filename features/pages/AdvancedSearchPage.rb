def goToSection section
  openPage
  find(:xpath, "//a[@title = '#{section}']").click()
end

def searchForItem thing
  fill_in("search-query", :with => thing)
    #find(:id, "search-query").send_keys thing
  click_button ("search_submit")
  #@browser.find_element(:id, "search_submit").click()
end

def selectSubCategory sub_category
  find(:xpath, "//option[text()='#{sub_category}']").click
end

def searchFor thing
  fill_in("search_query", :with => thing)
  field = find(:id, "search_query")
    #field.sendKeys thing
  field.submit()
end

#def wait_for_element_present element
#  wait_until
#  @browser.wait(elementPresent element)
#end
#
#private
#def elementPresent(element)
#  begin
#    @browser.findElement(:xpath, element)
#    return true
#  rescue
#    return false
#  end
#end