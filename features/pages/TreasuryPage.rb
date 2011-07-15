
def chooseFirstGallery
    find(".item-treasury-info-box h3 a").click
  end

  def verifyTreasuryPageResults
    assert_equal find(".primary .listings").visible?, true
  end