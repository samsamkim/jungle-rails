require 'rails_helper'



RSpec.describe Product, type: :model do

  describe 'Validations' do
    before(:each) do
      @category = Category.new
    end

    it "product is valid" do
      product1 = Product.new(
        name:  "brr",
        quantity: 1,
        price: 1,
        category: @category
      )
      product1.save

      expect(product1).to be_valid
    end

    it "not valid if no name" do
      product_no_name = Product.new(
        quantity: 1,
        price: 1,
        category: @category
      )
      product_no_name.save
      expect(product_no_name).to_not be_valid
    end

    it "not valid if no quantity" do
      product_no_quantity = Product.new(
        name: "",
        price: 1,
        category: @category
      )
      product_no_quantity.save
      expect(product_no_quantity).to_not be_valid
    end

    it "not valid if no price" do
      product_no_price = Product.new(
        name: "",
        quantity: 1,
        category: @category
      )
      product_no_price.save
      expect(product_no_price).to_not be_valid
    end

  end
end



