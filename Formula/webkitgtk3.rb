require 'formula'

class Webkitgtk3 < Formula
  homepage 'http://webkitgtk.org/'
  url 'http://webkitgtk.org/releases/webkitgtk-2.2.3.tar.xz'
  sha1 '57fa31c489e7fd5d405e0753e6e6f15933b143f3'

  depends_on :x11
  depends_on 'pkg-config' => :build
  depends_on 'autoconf'   => :build
  depends_on 'automake'   => :build
  depends_on 'libtool'    => :build
  depends_on 'xz'         => :build
  depends_on 'gtk-doc'    => :build

  depends_on 'bison'
  depends_on 'flex'
  depends_on 'enchant'
  depends_on 'gobject-introspection'
  depends_on 'harfbuzz'
  depends_on 'libxslt'
  depends_on 'libsoup'
  depends_on 'mesalib-glw'
  depends_on 'sqlite'
  depends_on 'webp'
  depends_on 'glib'
  depends_on 'gtk+'
  depends_on 'gtk+3'
  depends_on 'gstreamer'
  depends_on 'gst-plugins-base'
  depends_on 'icu4c'
  depends_on 'fontconfig'
  depends_on 'zlib'
  depends_on 'libsecret'

  fails_with :clang do
    build 421
  end

  def install
    system "./configure", "--disable-debug",
                          "--enable-static", "--disable-shared",
                          "--prefix=#{prefix}",
                          "--with-gtk=3.0",
                          "--enable-webkit2=yes",
                          "--enable-geolocation=no"

    system "make", "install"
  end

  test do
    system "false"
  end
end

