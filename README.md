
# README

# <i class="fas fa-tint"></i>Aroma life

<div align="center">
   <img src="https://user-images.githubusercontent.com/76684941/121766835-a2619c80-cb8f-11eb-85ed-14fced407b0c.gif" width="600">
</div>

## アプリURL

https://aromalife-app.com
（ゲストログイン(閲覧用)ボタンにてログインをお願い致します。）


## 使用技術

* フロントサイド
    * HTML (erb)
    * css (sass)
    * JavaScript (JQuery,erb)
    * Bootstrap 
* バックエンド
    * Ruby (2.7.2)
    * Ruby on Rails (6.1.3)
* サーバー
    * Nginx(WEB サーバー)
    * Puma(アプリケーションサーバー)
* DB
    * PostgreSQL (13.2)
* インフラ
    * AWS(VPC,RDS,EC2,S3,Route 53,ACM,ALB,IAM）
    * Capistrano
* 解析ツール
    * Rubocop(1.16)
    * Rails_best_practice (1.20)
* テスト
    * Rspec (3.1.0)
    * factory_bot (6.2.0)


##   コンセプト
### プロフィール作成サイトを選んだ理由
現職ではVBA（マクロ作成言語）で業務で使用するマクロを作成しており、実際に使用する方へのヒアリングとコミュニケーションの重要性を知っております。   
プロフィール作成サービスは、身近に既存のサービスを利用している方が多く、ヒアリングを繰り返しながら作成できるため、プロフィール作成サービスを選ぶことにいたしました。

###  自分なりのお洒落を実現できる
既存のサービスを利用しているユーザーの大半は１０～２０代の女性が多く、プロフィールの文章の書き方がお洒落だった為、デザインに拘りたいユーザーが多いように感じました。  
実際にユーザーにもヒアリングいたしましたが、やはり自分で色々とデザインをカスタマイズできるほうが良いそうです。  
しかし、既存のサービスの大半は元から用意されている２０種類ほどのデザインパターンからしか選べないことが多いため、ユーザーがあまり自由にプロフィールをカスタマイスすることが出来ません。   
そこで、ユーザーが細かいところまでプロフィールのデザインを選べて、自分なりのお洒落を実現できるサービスを作ろうと考えました。  

###  複数のSNSアカウントのリンクを登録できる
既存のサービスでは、TwitterなどのSNSのリンクやアカウントIDを登録すると、プロフィールにSNSのアイコンが表示されて、登録したSNSアカウントへのリンクボタンになります。    
しかし、各SNSのアカウントリンクを１つまでしか登録できないため、同じSNSで複数アカウントを持っている人や、好きなアイドルのアカウントのリンクなども一緒にのせたい人にはあまり優しくありません。  
実際に既存のサービスを利用しているユーザーには複数アカウントをのせたがっているユーザーが一定数おりました。  
そこで、無制限にTwitter、Instagram、Youtube、Facebook、Tiktokのアカウントリンクを登録できる機能を実装いたしました。  

###  複数のプロフィールを登録できる
既存のサービスの大半は、一つのアカウントにプロフィールを１つまでしか登録できません。  
しかし、既存のサービスを利用しているユーザーにヒアリングをしたところ、内容ごとにプロフィールを分けて使いたいユーザーもおりました。
その為、既存のサービスとの差別化も兼ねて、一つのアカウントにサブプロフィールを複数登録できるサービスを作ろうと考えました。

## 制作背景
Qiitaの記事にまとめたのでよろしければご覧頂きたいです。(QiitaのURL)

##  機能一覧

### 基本機能
|  実装内容  |　追加説明  |
| ---- | ---- |
|  ユーザー登録<br>ログイン機能<br>アカウント情報設定機能  |  deviceで実装  |
|  ゲストログイン機能  |    |
| 記事投稿機能 | 投稿、削除をajaxで実装 |
| マイページ機能 | |
| 画像投稿機能 | carrierwaveで実装 |
| いいね機能 | ajaxで実装 |
|  診断機能  | jqueryで実装 |
| 掲示板 | markdownで記述 |
|  ページネーション機能 |  kaminariで実装  |
|  管理者画面  |  activeadminで実装  |


各機能のスクショ

## ER図
![ER図の画像]()


## 追加予定機能
- 投稿を検索する機能
- CI/CDパイプラインの構築
