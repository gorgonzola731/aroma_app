
# README
<br>

# :droplet:Aroma life 

**アロマをテーマにしたポータルサイトです。診断機能、投稿機能、コラムの３つのコンテンツを制作しました。**

<div align="center">
   <img src="https://user-images.githubusercontent.com/76684941/121778274-34d66000-cbd1-11eb-8f54-006eaa7c52cd.gif" width="500">
</div>

<br>

## :globe_with_meridians:アプリURL

https://aromalife-app.com<br>
（ゲストログイン(閲覧用)ボタンにてログインをお願い致します。）

完成までの経緯や工夫した点などをQiitaの記事にアウトプットいたしました。よろしければこちらもご確認お願いいたします。<br>
https://qiita.com/gorgonzola731/items/2a457a49067a10b329b9

<br>

## :computer:使用技術

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
    * Capistrano (3.16.0)
* 解析ツール
    * Rubocop(1.16)
    * Rails_best_practice (1.20)
* テスト
    * Rspec (3.1.0)
    * factory_bot (6.2.0)

<br>

## :thought_balloon:コンセプト 「ストレスを感じる日常にアロマの癒しを」

### :bouquet: 自分の今の状況にあった香りを楽しめる
すでにリリースされているアプリの中にはアロマの特性を解説したものがありましたが、ユーザーの身体の状態や好みから適切なアロマを選ぶというサービスはなかったため、簡単な質問に答えるとその人の今の状態に適したアロマをおすすめするという診断機能を実装しました。
<div align="center">
   <img src="https://user-images.githubusercontent.com/76684941/121768209-fb353300-cb97-11eb-9551-1c7477cac583.png" width="600">
</div>


### :eyes:リラックスタイムをシェアできる
他の人が使っている精油の種類やおすすめの使い方をシェアすることができればリラックス体験の幅が広がるのではないかと考え、SNS風の記事投稿機能、記事に対するいいね機能、コメント機能を実装しました。
<div align="center">
   <img src="https://user-images.githubusercontent.com/76684941/121768797-15bcdb80-cb9b-11eb-8d52-f9e41d232e8f.png" width="600">
</div>



### :book: 奥が深いアロマの使い方を学べる
制作過程で効果的なアロマの使い方や逆効果となってしまう使い方などがあることを知ったので製作者から順次そういった情報を発信できる掲示板の機能を追加いたしました。
<div align="center">
   <img src="https://user-images.githubusercontent.com/76684941/121768850-6b918380-cb9b-11eb-88bc-193b00e30fef.png" width="600">
</div>

<br>

## :fire:制作背景
私の母がHSP(Highly Sensitive Person)と呼ばれる周囲と比べ疲れやすい性質であったため、過去にアロマをプレゼントしたことがありました。その後、使用した母が心身ともにリラックスすることができたと喜んでいたため、アロマの効果を実感いたました。<br>しかし、店頭に行くと非常に種類が多く身体の状況や好みに合ったものを選ぶのが難しいことを知りました。そこで、個人個人に合ったアロマを使用する手助けができたり、効果的な使い方を伝えることができるツールがあればHSPの方々が今よりもっと充実したリラックスタイムを送ることができるのではないかと考え、本アプリの制作を決めました。<br>制作にあたり、日常的にアロマを利用している人やHSPの方にSNSを通じて好みの香りの系統などを聞き、診断機能やコラムに反映させました。

<br>

## :four_leaf_clover: 機能一覧
|  実装内容  |　追加説明  |
| ---- | ---- |
|  ユーザー登録<br>ログイン機能<br>アカウント情報設定機能  |  deviceで実装  |
|  ゲストログイン機能  |    |
| 記事投稿機能 | 投稿、削除をajaxで実装 |
| マイページ機能 | |
| 画像投稿機能 | carrierwaveで実装 |
| いいね機能 | ajaxで実装 |
|  診断機能  | jqueryで実装 |
| コラム | markdownで記述 |
|  ページネーション機能 |  kaminariで実装  |
|  管理者画面  |  activeadminで実装  |

<br>

## ER図
<div align="center">
   <img src="https://user-images.githubusercontent.com/76684941/121771351-d5b12500-cba9-11eb-8402-89b2cd689607.png" width="900">
</div>

<br>

## 追加を予定している機能
- EC系のAPIを使って購入ページへ遷移する機能
- 投稿を検索する機能
- CI/CDパイプラインの構築
- Dockerの導入
