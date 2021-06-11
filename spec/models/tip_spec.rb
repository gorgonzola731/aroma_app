require "rails_helper"

RSpec.describe Tip, type: :model do
  describe "バリデーションのチェック" do
    subject { tip.valid? }

    context "データが条件を満たすとき" do
      let(:tip) { build(:tip) }
      it "保存できる" do
        expect(subject).to eq true
      end
    end

    context "titleが空のとき" do
      let(:tip) { build(:tip, title: "") }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(tip.errors.messages[:title]).to include "を入力してください"
      end
    end

    context "articleが空のとき" do
      let(:tip) { build(:tip, article: "") }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(tip.errors.messages[:article]).to include "を入力してください"
      end
    end

    context "imageが空のとき" do
      let(:tip) { build(:tip, image: "") }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(tip.errors.messages[:image]).to include "を入力してください"
      end
    end
  end
end
