# Openseacrh

Openseacrhに関するAPIのアクセスコントロールについて記述します。

## 目次

- [[GET] /api/opensearch/description.xml](#get-apiopensearchdescriptionxml)
- [[GET] /api/opensearch/search](#get-apiopensearchsearch)

## [GET] /api/opensearch/description.xml

○に合致すれば、description.xmlを取得することが出来ます。

| ロール   | システム<br>管理者 | リポジトリ<br>管理者 | コミュニティ<br>管理者 | 登録ユーザー | 一般ユーザー | ゲスト<br>（未ログイン） |
| -------- | ------------------ | -------------------- | ---------------------- | ------------ | ------------ | ------------------------ |
| 利用可否 | ○                  | ○                    | ○                      | ○            | ○            | ○                        |

## [GET] /api/opensearch/search

○に合致すれば、OpenSearchによる検索をすることが出来ます。

| ロール   | システム<br>管理者 | リポジトリ<br>管理者 | コミュニティ<br>管理者 | 登録ユーザー | 一般ユーザー | ゲスト<br>（未ログイン） |
| -------- | ------------------ | -------------------- | ---------------------- | ------------ | ------------ | ------------------------ |
| 利用可否 | ○                  | ○                    | ○                      | ○            | ○            | ○                        |

※ アイテムが検索結果に表示されるかどうかは検索画面の検索結果にアイテムが表示されるかどうかと同条件です。<br>
　[検索画面](ITEM_SEARCH_01.md#検索画面)を参照ください。

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
<p>2025/8/5</p>
</blockquote></td>
<td></td>
<td>初版作成</td>
</tr>
</tbody>
</table>
