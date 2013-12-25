class Bitcasa < Cask
  url 'https://www.bitcasa.com/download/mac'
  homepage 'https://www.bitcasa.com/'
  version '1.4.1324'
  sha1 '0d48dfac8e0413c1c0d04be756298d4924bd84fc'
  install 'InstallBitcasa.pkg'
  uninstall :script => 'Tools/Bitcasa Uninstaller.app/Contents/MacOS/Bitcasa Uninstaller'
end
