# OAステータス

OAステータスに関するAPIのアクセスコントロールについて記述します。

## 目次

- [POST /api/\<version>/oa_status/callback](#post-apiversionoa_statuscallback)



## POST /api/\<version>/oa_status/callback

表内のいずれかの○に合致すれば、OAステータスの更新が出来ます。

| ロール                                  | システム<br>管理者 | リポジトリ<br>管理者 | コミュニティ<br>管理者 | 登録ユーザー | 一般ユーザー | ゲスト<br>（未ログイン） |
| -------------------------------------------- | ------------------ | -------------------- | ---------------------- | ------------ | ------------ | ------------------------ |
| トークンのスコープに<br>oa_status:update<br>あり | ○                  | ○                    | ○                      | ○            | ○            | ×                       |
| トークンのスコープに<br>oa_status:update<br>なし                                 | ×                  | ×                    | ×                      | ×            | ×            | ×                        |


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
<p>2025/8/8</p>
</blockquote></td>
<td></td>
<td>初版作成</td>
</tr>
</tbody>
</table>