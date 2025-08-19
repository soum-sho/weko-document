# OpenSearch

OpenSearchに関するAPIのアクセスコントロールについて記述します。

## 目次

- [GET /api/opensearch/description.xml](#get-apiopensearchdescriptionxml)
- [GET /api/opensearch/search](#get-apiopensearchsearch)

## GET /api/opensearch/description.xml

全てのロールでdescription.xmlを取得することが可能です。

| ロール   | システム<br>管理者 | リポジトリ<br>管理者 | コミュニティ<br>管理者 | 登録ユーザー | 一般ユーザー | ゲスト<br>（未ログイン） |
| -------- | ------------------ | -------------------- | ---------------------- | ------------ | ------------ | ------------------------ |
| 利用可否 | ○                  | ○                    | ○                      | ○            | ○            | ○                        |

## GET /api/opensearch/search

全てのロールでOpenSearchによる検索をすることが可能です。

| ロール   | システム<br>管理者 | リポジトリ<br>管理者 | コミュニティ<br>管理者 | 登録ユーザー | 一般ユーザー | ゲスト<br>（未ログイン） |
| -------- | ------------------ | -------------------- | ---------------------- | ------------ | ------------ | ------------------------ |
| 利用可否 | ○                  | ○                    | ○                      | ○            | ○            | ○                        |

※ OpenSearchによる検索でアイテムが表示されるかどうかは、検索画面の検索結果にアイテムが表示されるかどうかと同一条件です。<br>
　[検索画面](USER_ITEM_SEARCH_01.md#検索画面)を参照ください。

- > 更新履歴

<table>
<thead>
<tr class="header">
<th>日付</th>
<th>GitHubコミットID</th>
<th>更新内容</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>2025/8/6</p>
</blockquote></td>
<td></td>
<td>初版作成</td>
</tr>
</tbody>
</table>
