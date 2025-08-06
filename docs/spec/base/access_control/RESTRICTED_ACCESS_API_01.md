# 制限公開

制限公開に関するAPIのアクセスコントロールについて記述します。

## 目次

- [[GET] /api/\<version>/workflow/activities](#get-apiversionworkflowactivities)
- [[POST] /api/\<version>/workflow/activities/\<activity_id>/approve](#post-apiversionworkflowactivitiesactivity_idapprove)
- [[POST] /api/\<version>/workflow/activities/\<activity_id>/throw-out](#post-apiversionworkflowactivitiesactivity_idthrow-out)
- [[GET] /api/\<version>/records/\<pid>/files/\<filename>/terms](#get-apiversionrecordspidfilesfilenameterms)
- [[POST] /api/\<version>/records/\<pid>/files/\<filename>/application](#post-apiversionrecordspidfilesfilenameapplication)
- [[POST] /api/\<version>/workflow/activities/\<activity_id>/application](#post-apiversionworkflowactivitiesactivity_idapplication)
- [[GET] /api/\<version>/records/\<pid>/need-restricted-access](#get-apiversionrecordspidneed-restricted-access)

## [GET] /api/\<version>/workflow/activities

いずれかの○に合致すれば、アクティビティの一覧を取得することが出来ます。

| 条件/ロール                                 | システム<br>管理者 | リポジトリ<br>管理者 | コミュニティ<br>管理者 | 登録ユーザー | 一般ユーザー | ゲスト<br>（未ログイン） |
| ------------------------------------------- | ------------------ | -------------------- | ---------------------- | ------------ | ------------ | ------------------------ |
| トークンのスコープに<br>user:activityがある | ○                  | ○                    | ○ ※1                   | ○ ※1         | ×            | ×                        |
| 上記以外                                    | ×                  | ×                    | ×                      | ×            | ×            | ×                        |

※1 自身が担当するアクティビティのみ取得することが出来ます。

## [POST] /api/\<version>/workflow/activities/\<activity_id>/approve

○に合致すれば、承認待ちのアクティビティを承認することが出来ます。

| 条件/ロール                                        | システム<br>管理者 | リポジトリ<br>管理者 | コミュニティ<br>管理者 | 登録ユーザー | 一般ユーザー | ゲスト<br>（未ログイン） |
| -------------------------------------------------- | ------------------ | -------------------- | ---------------------- | ------------ | ------------ | ------------------------ |
| トークンのスコープに<br>workflow:approve<br>がある | ○                  | ○                    | ○                      | ○            | ○            | ×                        |
| 上記以外                                           | ×                  | ×                    | ×                      | ×            | ×            | ×                        |

## [POST] /api/\<version>/workflow/activities/\<activity_id>/throw-out

○に合致すれば、操作中のアクティビティの操作を却下することが出来ます。

| 条件/ロール                                        | システム<br>管理者 | リポジトリ<br>管理者 | コミュニティ<br>管理者 | 登録ユーザー | 一般ユーザー | ゲスト<br>（未ログイン） |
| -------------------------------------------------- | ------------------ | -------------------- | ---------------------- | ------------ | ------------ | ------------------------ |
| トークンのスコープに<br>workflow:approve<br>がある | ○                  | ○                    | ○                      | ○            | ○            | ×                        |
| 上記以外                                           | ×                  | ×                    | ×                      | ×            | ×            | ×                        |

## [GET] /api/\<version>/records/\<pid>/files/\<filename>/terms

○に合致すれば、指定した制限公開ファイルの利用申請を行う際の利用規約を取得することが出来ます。

| 条件/ロール                                 | システム<br>管理者 | リポジトリ<br>管理者 | コミュニティ<br>管理者 | 登録ユーザー | 一般ユーザー | ゲスト<br>（未ログイン） |
| ------------------------------------------- | ------------------ | -------------------- | ---------------------- | ------------ | ------------ | ------------------------ |
| トークンのスコープに<br>user:activityがある | ○                  | ○                    | ○                      | ○            | ○            | ×                        |
| 上記以外                                    | ×                  | ×                    | ×                      | ×            | ×            | ○                        |

## [POST] /api/\<version>/records/\<pid>/files/\<filename>/application

○に合致すれば、指定した制限公開ファイルの利用申請を開始し、アクティビティの作成を行うことが出来ます。

| 条件/ロール                                 | システム<br>管理者 | リポジトリ<br>管理者 | コミュニティ<br>管理者 | 登録ユーザー | 一般ユーザー | ゲスト<br>（未ログイン） |
| ------------------------------------------- | ------------------ | -------------------- | ---------------------- | ------------ | ------------ | ------------------------ |
| トークンのスコープに<br>user:activityがある | ○                  | ○                    | ○                      | ○            | ○            | ×                        |
| 上記以外                                    | ×                  | ×                    | ×                      | ×            | ×            | ○ ※1                     |

※1 ゲストアクティビティが作成されます。<br>
　　既に同ファイル、同一メールアドレスに紐づくゲストアクティビティが存在する場合は既存アクティビティを使用します。

## [POST] /api/\<version>/workflow/activities/\<activity_id>/application

○に合致すれば、制限公開ファイルの利用申請ワークフローにおける申請内容の登録を行うことが出来ます。

| 条件/ロール                                 | システム<br>管理者 | リポジトリ<br>管理者 | コミュニティ<br>管理者 | 登録ユーザー | 一般ユーザー | ゲスト<br>（未ログイン） |
| ------------------------------------------- | ------------------ | -------------------- | ---------------------- | ------------ | ------------ | ------------------------ |
| トークンのスコープに<br>user:activityがある | ○                  | ○                    | ○                      | ○            | ○            | ×                        |
| 上記以外                                    | ×                  | ×                    | ×                      | ×            | ×            | ○                        |

※ 利用申請ワークフローのみで利用可能で、通常のワークフローアクティビティでは利用出来ません。

## [GET] /api/\<version>/records/\<pid>/need-restricted-access

○に合致すれば、当該ファイルのコンテンツダウンロードに利用申請が必要かどうか判断することが出来ます。

| 条件/ロール                             | システム<br>管理者 | リポジトリ<br>管理者 | コミュニティ<br>管理者 | 登録ユーザー | 一般ユーザー | ゲスト<br>（未ログイン） |
| --------------------------------------- | ------------------ | -------------------- | ---------------------- | ------------ | ------------ | ------------------------ |
| トークンのスコープに<br>item:readがある | ○                  | ○                    | ○                      | ○            | ○            | ×                        |
| 上記以外                                | ×                  | ×                    | ×                      | ×            | ×            | ○                        |

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
