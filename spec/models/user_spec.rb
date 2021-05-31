require 'rails_helper'

RSpec.describe User, type: :model do

  describe "バリデーションのチェック" do
    subject {user.valid?}

    context "データが条件を満たすとき" do
      let(:user) { build(:user) }
      it "保存できる" do
        expect(subject).to eq true
      end
    end
    context "emailが空のとき" do
      let(:user) { build(:user, email: "") }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(user.errors.messages[:email]).to include "が入力されていません。"
      end
    end
    
  end
end