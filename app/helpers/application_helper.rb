module ApplicationHelper
  # gulpでコンパイルしたファイルパスを取得
  def gulp_asset_path(path)
    rev_manifest_path = 'public/assets/rev-manifest.json'

    if File.exist?(rev_manifest_path)
      rev_manifest = JSON.parse(File.read(rev_manifest_path))
    end

    new_path = rev_manifest[path] if defined?(rev_manifest)
    raise "path miss match error: #{path}" if new_path.blank?

    return "/assets/javascripts/#{new_path}" if new_path.end_with?('.js')
    "/assets/stylesheets/#{new_path}" if new_path.end_with?('.css')
  end


end
