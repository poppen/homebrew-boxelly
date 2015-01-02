cask :v1 => 'macvim-kaoriya' do
  version '20141204'
  sha256 '38f6e67d5fd8edc25828ec297a0b73c5865873dd63d5325f6b2936184e5c664f'

  url 'https://github.com/splhack/macvim/releases/download/20141204/macvim-kaoriya-20141204.dmg'
  homepage 'https://code.google.com/p/macvim-kaoriya/'
  license :oss

  app 'MacVim.app'
  binary 'MacVim.app/Contents/MacOS/mvim'
end
