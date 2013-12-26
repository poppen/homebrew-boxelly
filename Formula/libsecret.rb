require 'formula'

class Libsecret < Formula
  homepage ''
  url 'http://ftp.gnome.org/pub/gnome/sources/libsecret/0.16/libsecret-0.16.tar.xz'
  sha1 '9110beaaa0dbaf0d8119c1a04f38ef87320cbc0e'

  depends_on 'pkg-config' => :build
  depends_on 'xz'         => :build
  depends_on 'glib'
  depends_on 'intltool'
  depends_on 'libgcrypt'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}", "--disable-manpages"

    system "make", "install"
  end

  test do
    system "false"
  end
end
