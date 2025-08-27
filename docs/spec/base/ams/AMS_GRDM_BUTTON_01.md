## 未病データベース GakuNinRDMボタン表示

アイテム詳細画面のGakuNinRDM(以下GRDM)ボタンの表示について記述する。

### 用語説明

本書では以下の用語で統一する。

  | 用語 | 説明 |
  | ---- | ---- |
  | フロント | 未病データベースのフロントエンド |
  | WEKO | 未病データベース用のWEKO3リポジトリ（バックエンド） |
  | プロジェクトURL | GRDMのプロジェクトや共有リクエストのURL  |

### 1. RO-CrateからWEKOのアイテムへの変換

プロジェクトURLはRO-Crate内で`ams:projectId`として記述される。  
WEKOのJSON-LDマッピング機能（[ADMIN_1_5：JSON-LDマッピング](../admin/ADMIN_1_5.md)を使用して、`ams:projectId`を未病アイテムタイプのプロジェクトURL(関連情報プロパティ)にマッピングする。

`ams:projectId`は`プロジェクトURL.関連識別子.関連識別子`にマッピングする。(以下、関連識別子とする。)  
また、`プロジェクトURL.関連タイプ`に固定値で`xxx`(未定)をマッピングする。(以下、関連タイプとする。)  
JSON-LDマッピング機能により、`プロジェクトURL.関連タイプ`は`ams:projectId`が存在する場合のみアイテムに登録される。

RO-Crateの例と対応するマッピング定義は以下のようになる。

```json
"@id": "./",
"@type": "Dataset",
"name": "Sample Dataset",
"description": "This is a sample dataset.",
"datePublished": "2025-03-01",
"ams:projectId":{
  "value": "https://rdm.nii.ac.jp/"
}
```

```json
"プロジェクトURL": "ams:projectId",
"プロジェクトURL.関連識別子.関連識別子": "ams:projectId.value",
"プロジェクトURL.関連タイプ": "$isVersionOf",
```

### 2. WEKOのアイテムからRO-Crateへの変換

WEKOのRO-Crateマッピング機能を使用し、関連識別子と関連タイプを以下のキーにマッピングする。  

- 関連識別子
  - ツリー構造: root > プロジェクトURL > URL > URL
  - RO-Crateのキー: `text`
- 関連タイプ
  - ツリー構造: root > プロジェクトURL > 関連タイプ > 関連タイプ
  - RO-Crateのキー: `text`

### 3. フロントでのGRDMボタン表示

WEKOのアイテム詳細情報取得APIを使用し、RO-Crateから関連識別子と関連タイプを取得する。  
関連識別子と関連タイプが取得でき、以下の条件を共にみたす場合、プロジェクトURLとして扱う。


- nginx/ams/weko-frontend/app.config.ts で設定したgrdm > urlの値が''(空文字列)

  またはnginx/ams/weko-frontend/app.config.ts で設定したgrdm > urlの値が''(空文字列)以外の場合、アイテム登録時にams:projectIdとして指定したURLが、grdm > urlの値の値から始まる

- アイテム登録時に指定した「関連タイプ」が nginx/ams/weko-frontend/app.config.ts で設定した grdm > relationType の値と一致する

プロジェクトURLが設定されている場合、ユーザのログイン状態に関わらずアイテム詳細画面にGRDMボタンを表示する。  
ユーザがGRDMボタンを押下した場合は、プロジェクトURLを新規ウィンドウで開く。  
GRDMボタンを表示している場合、リクエストボタンとその表示領域は非表示とする。

### 更新履歴

| 日付         | GitHubコミットID | 更新内容   |
|--------------|------------------|------------|
| 2025/06/13   |                  | 初版作成   |
