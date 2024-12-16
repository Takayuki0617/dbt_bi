## dbtからSnowflakeへのアクセスをキーペア認証で行う場合
https://docs.snowflake.com/ja/user-guide/key-pair-auth を参照。
秘密鍵作成の際は暗号化を行う

## dbtのインストール

mac
```
$ python3 -m venv dbt-env
$ source dbt-env/bin/activate
$ pip install -r requirements.txt
$ dbt deps
```

windows（git bash）
```
$ python -m venv dbt-env
$ source dbt-env/Scripts/activate
$ pip install -r requirements-dev.txt
```

## インストール確認
```
$ dbt debug
```
All checks passed!となればok

# 実行手順
## 環境変数の登録
.env.sampleを参考に各自の環境に合わせて値を変更して、ターミナル(コマンドプロンプト)で実行してください

## 仮想環境の有効化

前手順で実行している場合は不要
```
$ source dbt-env/bin/activate
$ dbt run
```



終わる時は以下
```
$ deactivate
```
