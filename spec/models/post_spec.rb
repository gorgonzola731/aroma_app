require 'rails_helper'

RSpec.describe Post, type: :model do
  

  describe "バリデーションのチェック" do
    subject {post.valid?}

    context "データが条件を満たすとき" do
      let(:post) { build(:post) }
      it "保存できる" do
        expect(subject).to eq true
      end
    end

    context "titleが空のとき" do
      let(:post) { build(:post, title: "") }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(post.errors.messages[:title]).to include "を入力してください"
      end
    end


    context "contentが空のとき" do
      let(:post) { build(:post, content: "") }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(post.errors.messages[:content]).to include "を入力してください"
      end
    end

    context "aromaが空のとき" do
      let(:post) { build(:post, aroma: "") }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(post.errors.messages[:aroma]).to include "を入力してください"
      end
    end

    context "titleが31字以上のとき" do
      let(:post) { build(:post, title: "あ" * 31) }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(post.errors.messages[:title]).to include "は30文字以内で入力してください"
      end
    end

    context "aromaのが不正な値のとき" do
      let(:post) { build(:post, aroma: "スモーキング" ) }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(post.errors.messages[:aroma]).to include "は一覧にありません"
      end
    end
    

    
  end
end
