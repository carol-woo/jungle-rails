require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # it 'validates a perfect full product THAT CAN be saved' do
    #   @category = Category.new
    #   @category.name = "Test Cat"
    #   @category.save
      
    #   @product = Product.new
    #   @product.name = "woaw"
    #   @product.price = "1.99"
    #   @product.quantity = "7"  
    #   @product.category_id = @category.id
    #   byebug
    #   @product.save
      
    #   expect(@product.errors.messages.length).to be_zero
    # end
    it 'validates :name' do
      @category = Category.new
      @product = Product.new
      @product.name = 'Hello'
      @product.save

      expect(@product.name)
    end

    it 'validates :price' do
      @category = Category.new
      @product = Product.new
      @product.price = '1'
      @product.save
      
      expect(@product.price)
    end

    it 'validates :quantity' do 
      @category = Category.new
      @product = Product.new
      @product.quantity = "7"

      expect(@product.quantity)
    end

    it 'validates :category' do 
      @category = Category.new
      @product = Product.new
      @product.category_id = @category.id
      
    expect(@product.category_id)
    end
  end
end
