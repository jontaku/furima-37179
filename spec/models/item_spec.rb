require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品情報の保存' do
    context '商品情報が保存できる場合' do
      it '商品情報が全て存在すれば保存できる' do
        expect(@item).to be_valid
      end
    end
    context '商品情報が保存できない場合' do
      it 'item_nameが空では保存できない' do
        @item.item_name = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Item name can't be blank")
      end
      it 'explanationが空では保存できない' do
        @item.explanation = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Explanation can't be blank")
      end
      it 'category_idが空では保存できない' do
        @item.category_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Category can't be blank")
      end
      it 'condition_idが空では保存できない' do
        @item.condition_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Condition can't be blank")
      end
      it 'shipping_charge_idが空では保存できない' do
        @item.shipping_charge_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Shipping charge can't be blank")
      end
      it 'prefecture_idが空では保存できない' do
        @item.prefecture_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Prefecture can't be blank")
      end
      it 'shipping_day_idが空では保存できない' do
        @item.shipping_day_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Shipping day can't be blank")
      end
      it 'priceが空では保存できない' do
        @item.price = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank")
      end
      it 'imageが空では保存できない' do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end
      it 'ユーザーが紐付いていなければ投稿できない' do
        @item.user = nil
        @item.valid?
        expect(@item.errors.full_messages).to include('User must exist')
      end
    end
  end
end
