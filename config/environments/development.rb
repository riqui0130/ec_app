# 設定ファイルで指定された設定は、config/application.rbの設定に優先して適用されます。
Rails.application.configure do

  # 開発環境ではアプリケーションのコードが変更されるたびにリロードされます。これはレスポンスタイムを遅くしますが、コード変更時にWebサーバーを再起動する必要がないため、開発には適しています。
  config.cache_classes = false

  # 起動時にコードを事前に読み込まない。
  config.eager_load = false

  # 完全なエラーレポートを表示します。
  config.consider_all_requests_local = true

  # サーバータイミングを有効にします。
  config.server_timing = true

  # キャッシングを有効/無効にします。デフォルトではキャッシングは無効です。
  if Rails.root.join("tmp/caching-dev.txt").exist?
    config.action_controller.perform_caching = true
    config.cache_store = :memory_store
    config.public_file_server.headers = {
      "Cache-Control" => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false
    config.cache_store = :null_store
  end

  # アップロードされたファイルをローカルファイルシステムに保存します（オプションについてはconfig/storage.ymlを参照）。
  config.active_storage.service = :local

  # メーラーが送信に失敗しても気にしない。
  config.action_mailer.raise_delivery_errors = false

  # メールのキャッシングを無効にします。
  config.action_mailer.perform_caching = false

  # メールのプレビュー用設定
  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }


  # 非推奨の通知をRailsログに出力します。
  config.active_support.deprecation = :log

  # 許可されていない非推奨の使用に対して例外を発生させます。
  config.active_support.disallowed_deprecation = :raise

  # Active Supportがどの非推奨のメッセージを許可しないかを指定します。
  config.active_support.disallowed_deprecation_warnings = []

  # 保留中のマイグレーションがある場合にページの読み込み時にエラーを発生させます。
  config.active_record.migration_error = :page_load

  # データベースクエリをトリガーしたコードをログにハイライトします。
  config.active_record.verbose_query_logs = true

  config.web_console.permissions = '172.21.0.0/16'

end
