Given /^I am on Etsy.com$/ do
  visit "http://etsy.com"
end

Given /^I am searching on Etsy.com$/ do
  visit "http://www.etsy.com/search_advanced.php"
  selectOkIfDialogAppears
end

When /^I specify the (.*) sub category$/ do |sub_cat|
  selectSubCategory sub_cat
end

When /^I search for (.*)$/ do |thing|
  searchForItem thing
end


Then /^there are search results$/ do
  verifySearchResultsPresent
end

When /^I want to browse through a treasury gallery$/ do
  When "I want to buy something from etsy.com"
  When "I want to browse the treasury"
  When "I choose the first treasury gallery"
end

When /^I want to buy something from etsy.com$/ do
  goToBuySection
  selectOkIfDialogAppears
end

When /^I want to browse the treasury$/ do
  selectTreasury
end

When /^I choose the first treasury gallery$/ do
  chooseFirstGallery
end

Then /^results will be displayed in the gallery$/ do
  verifyTreasuryPageResults
end


Given /^that the cart is empty$/ do
  openHomePage
  verifyCartIsEmpty
end

When /^an item is added to the cart$/ do
  searchForItem "hat"
  buyFirstItem
end

Then /^the cart contains that item$/ do
  hasItem
end

Given /^the cart contains one item$/ do
  Given "I am searching on Etsy.com"
  When "an item is added to the cart"
end

When /^the item is removed$/ do
  removeItem
end
#
Then /^the cart will be empty$/ do
   verifyCartIsEmpty
end