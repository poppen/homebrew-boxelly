cask :v1 => 'iterm2-aquaskk' do
  version '1.0'
  sha256 'b37898f7568da019ee756bce68eb0839436d59bcea519b03f329734b8b02c888'

  url 'https://github.com/downloads/mrkn/iterm2/iTerm-1.0-aquaskk.app.zip'
  homepage 'https://github.com/mrkn/iterm2'

  license :gpl

  app 'iTerm.app'

  zap :delete => '~/Library/Preferences/com.googlecode.iterm2.plist'
end
