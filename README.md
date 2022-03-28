# haoblackj's Novel-Template
##  前提
- 動作サポートは一切できません。思ったとおり動かない? 知ったこっちゃないです。ご自由に、ってやつっス
-  説明に用いる環境は次のとおりです。
    - Windows 10 November 2021 Update(バージョン 21H2) (x64)
    - Google Chrome
- MacやLinuxを使う方は適当に読み替えてください。
- FirefoxやMicrosoft Edgeを使う方でも、以下の手順で特に問題ないかとは思います。検証はしてません。
    - Internet ExplorerやSafariでは動作を確認していません。する気もありません。
##  テンプレートの使用方法
1.  テンプレートリポジトリページ中段の「Use this template」を押下する。
2.  作成したいリポジトリ名を入力する。
3.  公開リポジトリか非公開リポジトリかを選択する。
4.  Include all branchesのチェックが空白になっていることを確認する。
5.  リポジトリが作成されました。
## リポジトリ作成後にやること
1.  package.json生成
    1.  クローンしたローカルディレクトリでcmdないしPowerShellを起動する。
    2.  以下のコマンドを投入する。
    ~~~cmd:generate package.json
    npm init
    ~~~
    3.  質問に回答しながら、package.json を生成する。
    4.  生成された package.json の scripts ブロックに、以下の記述を追記する。
    ~~~npm:Append package.json > scripts
    "test": "echo \"Error: no test specified\" && exit 1",
    "novel-build": "novel-build",
    "novel-build-alphapolis": "novel-build-alphapolis",
    "novel-build-hameln": "novel-build-hameln",
    "novel-build-kakuyomu": "novel-build-kakuyomu",
    "novel-build-narou": "novel-build-narou",
    "novel-build-note": "novel-build-note",
    "novel-build-novelabo": "novel-build-novelabo",
    "novel-png": "novel-png",
    "novel-png-square": "novel-png-square",
    "novel-png-paperback": "novel-png-paperback",
    "novel-png-note-header": "novel-png-note-header",
    "novel-png-twitter-header": "novel-png-twitter-header",
    "novel-proofread": "novel-proofread",
    "novel-publish": "novel-publish",
    "novel-publish-horizontal": "novel-publish-horizontal",
    "novel-publish-vertical": "novel-publish-vertical",
    "novel-report": "novel-report"
    ~~~
2.  GitHub Actions用の Secrets を追加する。
    1.  Account→Setting から Developer settings へ進み、Personal access tokens を開く。
    2.  以下の3つのトークンを生成する。
        - GitHub Project Automation+ (repo)
        - Labeler (admin:public_key, notifications, repo, user, workflow, write:discussion, write:packages)
        - DEPENDABOT_AUTOMATION_TOKEN (admin:enterprise, admin:gpg_key, admin:org, admin:org_hook, admin:public_key, admin:repo_hook, delete:packages, gist, notifications, repo, user, workflow, write:discussion, write:packages)
    3.  各トークン発行後、トークンを控えておく。
    4.  リポジトリに戻り、Settings → Secrets → Actionsに進む。
    5.  それぞれのトークンを登録する。
        - GitHub Project Automation+ : GPA_PAT
        - Labeler : LABELER_PAT
        - DEPENDABOT_AUTOMATION_TOKEN : DEPENDABOT_AUTOMATION_TOKEN
3.  個別ファイルを修正する。
    - config.toml
        - baseURL
        - title
    - dict/dict.yml
        - それぞれの固有名詞あたりを書いたらいいんじゃないですかね。
    - .github/ISSUE_TEMPLATE/config.yml
        - 《Project Name》 をリポジトリ名に変更する。
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
    - Pages (プレプリントとしての閲覧用ページ。必要な場合は設定してください。)
        - Source
            - Branch : gh-pages
            - (root)



-  他、気づいたらアップデートします。
    - 不備不足などありましたら、Issue・Pull Requestなどでご指摘ください。