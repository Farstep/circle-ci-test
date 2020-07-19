require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'title, contentが存在するので、バリデーションが通る' do
    product = Product.new(title: 'こんにちは！', content: '元気ですか！')
    expect(product).to be_valid
  end
  it 'titleが存在しないので、バリデーションが弾かれる' do
    product = Product.new(content: '元気ですか！')
    expect(product).not_to be_valid
  end
  it 'contentが存在しないので、バリデーションが弾かれる' do
    product = Product.new(title: 'こんにちは!')
    expect(product).not_to be_valid
  end
  it 'titleが５文字未満なので、バリデーションが弾かれる' do
    product = Product.new(title: 'パクチー')
    expect(product).not_to be_valid
  end
end
