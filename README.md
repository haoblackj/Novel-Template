<h1 align="center">Welcome to Novel-Template 👋</h1>
<p>
  <img alt="Version" src="https://img.shields.io/badge/version-1.0.0-blue.svg?cacheSeconds=2592000" />
  <a href="https://github.com/haoblackj/Novel-Template#readme" target="_blank">
    <img alt="Documentation" src="https://img.shields.io/badge/documentation-yes-brightgreen.svg" />
  </a>
  <a href="https://github.com/haoblackj/Novel-Template/graphs/commit-activity" target="_blank">
    <img alt="Maintenance" src="https://img.shields.io/badge/Maintained%3F-yes-green.svg" />
  </a>
  <a href="https://github.com/haoblackj/Novel-Template/blob/master/LICENSE" target="_blank">
    <img alt="License: MIT" src="https://img.shields.io/github/license/haoblackj/Novel-Template" />
  </a>
</p>


### 🏠 [Homepage](https://github.com/haoblackj/Novel-Template#readme)

## Author

👤 **haoblackj**

* Github: [@haoblackj](https://github.com/haoblackj)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!<br />Feel free to check [issues page](https://github.com/haoblackj/Novel-Template/issues). You can also take a look at the [contributing guide](https://github.com/haoblackj/Novel-Template/blob/master/CONTRIBUTING.md).

## Show your support

Give a ⭐️ if this project helped you!

##  前提
- 動作サポートは一切できません。思ったとおり動かない? 知ったこっちゃないです。ご自由に、ってやつっス
-  説明に用いる環境は次のとおり。
    - Windows 10 November 2021 Update(バージョン 21H2) (OS ビルド 19044.1645) (x64)
    - Google Chrome
- MacやLinuxを使う方は適当に読み替えてください。
- FirefoxやMicrosoft Edgeを使う方でも、以下の手順で特に問題ないかとは思います。検証はしてません。
    - Internet Explorer(Microsoft EdgeのIEモードを含む)やSafariでは動作を確認していません。する気もありません。
##  テンプレートの使用方法
1.  テンプレートリポジトリページ中段の「Use this template」を押下する。
2.  作成したいリポジトリ名を入力する。
3.  公開リポジトリか非公開リポジトリかを選択する。
4.  Include all branchesのチェックが空白になっていることを確認する。
5.  リポジトリ作成完了。
## リポジトリ作成後にやること
1.  package.json生成
    1.  クローンしたローカルディレクトリでcmdないしPowerShellを起動する。
    2.  以下のコマンドを投入する。
    ~~~cmd:generate package.json
    npm init
    ~~~
    3.  質問に回答しながら、package.json を生成する。
    4.  以下のコマンドを投入する。
    ~~~cmd:generate package.json
    npm install
    ~~~
3.  個別ファイルを修正する。
    - config.toml
        - baseURL
        - title
    - dict/dict.yml
        - それぞれの固有名詞あたりを書いたらいいんじゃないですかね。
    - .github/ISSUE_TEMPLATE/config.yml
        - 《Project Name》 をリポジトリ名に変更する。
2.  GitHub Actions用の Secrets を追加する。
    1.  Account→Setting から Developer settings へ進み、Personal access tokens を開く。
    2.  以下の3つのトークンを生成する。
        - GitHub Project Automation+ (repo)
        - Labeler (admin:public_key, notifications, repo, user, workflow, write:discussion, write:packages)
        - DEPENDABOT_AUTOMATION_TOKEN (repo)
    3.  各トークン発行後、トークンを控えておく。
    4.  リポジトリに戻り、Settings → Secrets → Actionsに進む。
    5.  それぞれのトークンを登録する。
        - GitHub Project Automation+ : GPA_PAT
        - Labeler : LABELER_PAT
        - DEPENDABOT_AUTOMATION_TOKEN : DEPENDABOT_AUTOMATION_TOKEN
4.  GitHubの各機能を有効化する。(特記なき場合は有効化する)
    - Projects
    - Discussions
    - Pull Requests
        - Allow merge commits
        - Allow squash commits
        - Allow rebase commits
        - Allow auto-merge
        - Automatically delete head branches
    - Code security and analysis
        - Dependency graph
        - Dependabot alerts
        - Dependabot security updates
    - Pages (プレプリントとしての閲覧用ページ。必要な場合は設定してください。プライベートリポジトリではGitHub Pro等の契約が必要です)
        - Source
            - Branch : gh-pages
            - (root)
5.  プレプリント機能を使用する場合、Hugoのテーマから適当なものを選び、設定する。

## ToDo
- [ ] リポジトリに実装した機能に関する説明
- [ ] 使用しているパッケージやhugoのテーマに関する記述

## 📝 License

Copyright © 2022 [haoblackj](https://github.com/haoblackj).<br />
This project is [MIT](https://github.com/haoblackj/Novel-Template/blob/master/LICENSE) licensed.

***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_
