def selectTreasury
  click_link("Explore Treasury")
end

def goToBuySection
  click_link("Buy")
end

def selectOkIfDialogAppears
  if has_button?("Okay")
    click_button("Okay")
  end
end

