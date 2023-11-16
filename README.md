## About Larabel PJ Base

これは，テストで作成したLaravelプロジェクトのベースになります．

## How to SetUp

1. Dockerfileの設定
    PHPのバージョンや，作業ディレクトリなどの確認・変更をする  
    - docker-compose.ymlの設定
        コンテナの設定を確認・変更(以下列挙)  
        - アプリケーション:コンテナ名
        - DB:コンテナ名
        - DB:DB名
        - DBアカウント情報
        - ユーザ
            - パスワード
            - DBアカウント情報
    - phpmyadminは不要であれば削除
2. .envの設定
    docker-compose.ymlに合わせて変更
    - Dockerコンテナの起動
        以下のコマンドでコンテナ起動
        ```
            composer install
            docker-compose up -d
        ```
3. Laravel 初回セットアップ
    以下のコードでDBの設定
    ```
        php artisan migrate
    ```
4. Done.

## phpMyAdmin

MySQLをWEBから操作できるようになる．

不要であれば，docker-compoes.ymlより該当コンテナを削除する．

:8081にアクセスすることで利用可能．

## Laravel License

LaravelのフレームワークはMITライセンスのオープンソースソフトウェアです．

[MIT license](https://opensource.org/licenses/MIT).
