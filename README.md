## About Larabel PJ Base

これは，テストで作成したLaravelプロジェクトのベースになります．

## How to SetUp

<ol>
    <li>Dockerfileの設定</li>
        <p>PHPのバージョンや，作業ディレクトリなどの確認・変更をする</p>
    <li>docker-compose.ymlの設定</li>
        <p>コンテナの設定を確認・変更(以下列挙)</p>
        <ul>
            <li>アプリケーション:コンテナ名</li>
            <li>DB:コンテナ名</li>
            <li>DB:DB名</li>
            <li>DBアカウント情報</li>
                <p>ユーザ</p>
                <p>パスワード</p>
            <li>DBアカウント情報</li>
        </ul>
        <p>phpmyadminは不要であれば削除</p>
    <li>.envの設定</li>
        <p>docker-compose.ymlに合わせて変更</p>
    <li>Dockerコンテナの起動</li>
        <p>以下のコマンドでコンテナ起動</p>
        <code>
            docker-compose up -d
        </code>
    <li>Laravel 初回セットアップ</li>
        <p>以下のコードでDBの設定</p>
        <code>
            php artisan migrate
        </code>
</ol>

## Laravel License

LaravelのフレームワークはMITライセンスのオープンソースソフトウェアです．

[MIT license](https://opensource.org/licenses/MIT).
