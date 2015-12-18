class BuyStampsPage < Pages

  def page_url
    add_env_prefix($env_config['buy_stamps_page_url'])
  end

  def product_by_index(index)
    elements = @browser.find_element(:css, 'div.product-wrap.three-product-col').find_elements(:tag_name, 'article')
    elements[index.to_i-1].find_element(:css, 'img.prodThumb')
  end

  def add_to_cart_button
    @browser.find_element(:id, 'addToCartBtn')
  end

  def product_in_cart
    @browser.find_element(:id, 'shopping-cart-panel-quantity')
  end

end