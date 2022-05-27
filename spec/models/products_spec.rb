require 'rails_helper'

describe Product do
  it("has many reviews") do
    product = Product.create(name: "product", cost:)
    review1 = Review.create(author: "Rob Le",content_body: "it is fine", rating: 2, product_id: product.id)
    review2 = Review.create(author: "Marry Le",content_body: "it is fine", rating: 3, product_id: product.id)
    expect(product.reviews()).to(eq([review1, review2]))
  end
end
describe Album do
  it { should have_many(:reviews) }
end