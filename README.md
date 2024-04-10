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
    - Microsoft Windows [Version 10.0.22621.2283]
        - Microsoft Windows 11 Pro を使用しています。Home や Enterprise で前提条件を満たせるかは不明です。
    - Visual Studio Code
        -   前提となる拡張機能は次のとおり。
            ```
            EditorConfig.EditorConfig
            haoblackj.convertwidth4novelwriter
            TaiyoFujii.novel-writer
            taichi.vscode-textlint
            me-dutour-mathieu.vscode-github-actions
            GitHub.vscode-pull-request-github
            KnisterPeter.vscode-commitizen
            redhat.vscode-yaml
            eamodio.gitlens
            donjayamanne.githistory
            mhutchie.git-graph
            GitHub.github-vscode-theme
            sdras.night-owl
            github.vscode-github-actions
            TaiyoFujii.japanese-morpheme-handler
            ```
        -   上に示した拡張機能のリストをテキストファイルに保存して、下記のPowerShellを実行すると一括でインストールできる。
            ```PowerShell
            code --install-extension <テキストファイルのフルパス>
            ```
    - Google Chrome
    - Windows Subsystem for Linux(以下 WSL)
        - WSLのバージョン等は次のとおり。
          ```
          WSL バージョン: 1.2.5.0
          カーネル バージョン: 5.15.90.1
          WSLg バージョン: 1.0.51
          MSRDC バージョン: 1.2.3770
          Direct3D バージョン: 1.608.2-61064218
          DXCore バージョン: 10.0.25131.1002-220531-1700.rs-onecore-base2-hyp
          Windows バージョン: 10.0.22621.2428
          ```
        - WSLで使用するディストリビューションは次のとおり。
          ```
          No LSB modules are available.
          Distributor ID: Ubuntu
          Description:    Ubuntu 22.04.1 LTS
          Release:        22.04
          Codename:       jammy
          ```
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
2.  個別ファイルを修正する。
    - dict/dict.yml
        - ミスタイプすることが多い固有名詞あたりを書いたらいいんじゃないですかね。
3.  これまで変更したファイルをコミット・プッシュする
    -   GitHubの認証情報を求めてきたら、都度サインインする。
    -   その他のエラーが出てきたら、都度ググる。
        -   初回構築の際によく生じるエラーについては、そのうち追記します。
4.  ターミナルに以下のコマンドを投入して、リポジトリの設定を実行する。
    ```bash:Configure Repository Setting
    ./configure_repository.sh
    ```

## ToDo
- [ ] リポジトリに実装した機能に関する説明

## 📝 License

Copyright © 2023 [haoblackj](https://github.com/haoblackj).<br />
This project is [MIT](https://github.com/haoblackj/Novel-Template/blob/master/LICENSE) licensed.

***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_
