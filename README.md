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
- 動作サポートは一切できません。
    -  機能追加などについては募集中です(諸般の事情によりお応えできない場合もあります)。
-  説明に用いる環境は次のとおり。
    - Windows 10 November 2022 Update(バージョン 22H2) (OS ビルド 19045.2604) (x64)
        - Microsoft Windows 10 Pro を使用しています。Home や Enterprise で前提条件を満たせるかは不明です。
    - Visual Studio Code
        -   前提となる拡張機能は次のとおり。
            ```
            GitHub.codespaces
            GitHub.vscode-pull-request-github
            MS-CEINTL.vscode-language-pack-ja
            ms-vscode-remote.remote-containers
            ms-vscode-remote.remote-ssh
            ms-vscode-remote.remote-ssh-edit
            ms-vscode-remote.remote-wsl
            ```
        -   上に示した拡張機能のリストをテキストファイルに保存して、下記のPowerShellを実行すると一括でインストールできる。
            ```PowerShell
            code --install-extension <テキストファイルのフルパス>
            ```
    - Google Chrome
    - Windows Subsystem for Linux(以下 WSL)
        - WSLのバージョン等は次のとおり。
          ```
          WSL バージョン: 1.2.0.0
          カーネル バージョン: 5.15.90.1
          WSLg バージョン: 1.0.51
          MSRDC バージョン: 1.2.3770
          Direct3D バージョン: 1.608.2-61064218
          DXCore バージョン: 10.0.25131.1002-220531-1700.rs-onecore-base2-hyp
          Windows バージョン: 10.0.19045.2846
          ```
        - WSLで使用するディストリビューションは次のとおり。
          ```
          No LSB modules are available.
          Distributor ID: Ubuntu
          Description:    Ubuntu 22.04.1 LTS
          Release:        22.04
          Codename:       jammy
          ```

    - Docker
        - WSL内からDockerが使えれば、たいてい大丈夫だと思います。
        - 私はUbuntuに直接Dockerをインストールしていますが、CLI操作に不慣れな人は、WindowsにDocker Desktopをインストールしてもいいかと思います。
        - 詳しい設定方法は自分で調べてください。
    - Windows Terminal
- WSL環境は下の設定にあわせることをおすすめします。
    ```PowerShell
    wsl --status
    > 既定のディストリビューション: Ubuntu
    > 既定のバージョン: 2
    ```
- MacやLinuxを使う方は適当に読み替えてください。
- FirefoxやMicrosoft Edgeを使う方でも、以下の手順で特に問題ないかとは思います。検証はしてません。
    - Internet Explorer(Microsoft EdgeのIEモードを含む)やSafariでは動作を確認していません。する気もありません。
    - 世の中にはサーバOSやLTSCで小説を執筆する猛者もいると聞いたことがあるので、一応上記のIE非サポートの文言は残しておきます。
##  テンプレートの使用方法
1.  テンプレートリポジトリページ中段の「Use this template」を押下する。
2.  作成したいリポジトリ名を入力する。
3.  公開リポジトリか非公開リポジトリかを選択する。
4.  Include all branchesのチェックが空白になっていることを確認する。
5.  リポジトリ作成完了。
## リポジトリ作成後にやること(特筆ない限りWSL内で作業)
0.  リポジトリをローカルにクローン→VSCodeで開く
    1.  Windows TerminalでUbuntuを起動し、ホームディレクトリ配下の任意のディレクトリにリポジトリをクローンする。
    2.  上記のディレクトリに移動し、VSCodeで開く。下記のコマンドが有用。
        ```bash
        code .
        ```
1.  package.json生成
    1.  VSCodeでターミナルを開く。下記のコマンドが有用。
        >特に変更していない限り、`Ctrl + @` で開けます。
    2.  ターミナルに以下のコマンドを投入して、package.jsonを修正する。
        ```bash:generate package.json
        yarn init
        ```
    3.  package.json が修正されたことを確認する。
        >左ペインに表示されたファイルツリーで、`package.json`の右側に `M` と表示されたことを確認してください。
    4.  ターミナルに以下のコマンドを投入して、必要なパッケージをインストールする。
        ```bash:Install dependency
        yarn install
        ```
    5.  パッケージが正常にインストールされたことを確認する。
        >左ペインに表示されたファイルツリーで、`yarn.lock`というファイルが新しく作成されていることを確認する。
    6.  上記で修正・作成されたファイルをコミット・プッシュする。
2.  devcontainerを起動する。
    1.  コマンドパレットを開き、`Dev Containers: Reopen in Container`を押下する。
        >特に変更していない限り、`Ctrl + Shift + P`で開けます。
        >コマンドパレット内に表示されていなければ、VSCodeの拡張機能が足りませんので、前提に示した拡張機能をインストールしているかを再度確認してください。
    2.  VSCodeが一旦閉じて、再度起動する。
        >コンテナイメージなどをダウンロードしているので、少し時間がかかります。
    3.  `Stating Dev Container`の表示が右下から消えたら、devcontainerの作成が完了したと判断してよいです。
3.  個別ファイルを修正する。
    - dict/dict.yml
        - ミスタイプすることが多い固有名詞あたりを書いたらいいんじゃないですかね。
4.  これまで変更したファイルをコミット・プッシュする
    -   GitHubの認証情報を求めてきたら、都度サインインする。
    -   その他のエラーが出てきたら、都度ググる。
        -   初回構築の際によく生じるエラーについては、そのうち追記します。
2.  GitHub Actions用の Secrets を追加する。
    1.  Account→Setting から Developer settings へ進み、Personal access tokens を開く。
    2.  以下の3つのトークンを生成する。
        - GitHub Project Automation+ (repo)
        - Labeler (admin:public_key, notifications, repo, user, workflow, write:discussion, write:packages)
    3.  各トークン発行後、トークンを控えておく。
    4.  リポジトリに戻り、Settings → Secrets → Actionsに進む。
    5.  それぞれのトークンを登録する。
        - GitHub Project Automation+ : GPA_PAT
        - Labeler : LABELER_PAT
3.  下記ページを参考に、GitHub Appを作成し、下記のとおりに情報を登録する。
    [GitHub Appsトークン解体新書：GitHub ActionsからPATを駆逐する技術](https://zenn.dev/tmknom/articles/github-apps-token)
    - AUTO_MERGE_BOT_APP_ID
    - AUTO_MERGE_BOT_PRIVATE_KEY
5.  GitHubの各機能を有効化する。(特記なき場合は有効化する)
    - Projects
    - Discussions
    - Pull Requests
        - Allow merge commits
        - Allow auto-merge
        - Automatically delete head branches
    - Code security and analysis
        - Dependency graph
        - Dependabot alerts
        - Dependabot security updates

## ToDo
- [ ] リポジトリに実装した機能に関する説明

## 📝 License

Copyright © 2023 [haoblackj](https://github.com/haoblackj).<br />
This project is [MIT](https://github.com/haoblackj/Novel-Template/blob/master/LICENSE) licensed.

***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_
