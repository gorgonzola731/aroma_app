require "rails_helper"

RSpec.describe User, type: :model do
  describe "バリデーションのチェック" do
    subject { user.valid? }

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

    context "nameが空のとき" do
      let(:user) { build(:user, name: "") }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(user.errors.messages[:name]).to include "を入力してください"
      end
    end

    context "passwordが空のとき" do
      let(:user) { build(:user, password: "") }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(user.errors.messages[:password]).to include "が入力されていません。"
      end
    end

    context "emailがすでに存在する時は無効である" do
      before { create(:user, email: "test@email.com") }
      let(:user) { build(:user, email: "test@email.com") }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(user.errors.messages[:email]).to include "は既に使用されています。"
      end
    end

    context "email が256文字以上のとき" do
      let(:user) { build(:user, email: "a" * 256) }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(user.errors.messages[:email]).to include "は有効でありません。"
      end
    end

    context "password が5文字以下のとき" do
      let(:user) { build(:user, password: "a" * 5) }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(user.errors.messages[:password]).to include "は6文字以上に設定して下さい。"
      end
    end
  end
end
