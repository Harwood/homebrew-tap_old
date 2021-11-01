class Libgourou < Formula
  version "0.3.2"

  desc "A free implementation of Adobe's ADEPT protocol used to add DRM on ePub files"
  homepage "http://indefero.soutade.fr/p/libgourou/"
  url "http://indefero.soutade.fr/p/libgourou/downloads/get/libgourou_utils_#{version}.tgz"
  sha256 "cd5c101fc1c2b9e0b02ce0585f93c514d6f16bdc341194a2a315f64f5ed3ecc8"
  license "LGPL-3.0-or-later"
  head "git://soutade.fr/libgourou.git", :using => :git

  depends_on "ioctl" => :build
  depends_on "pugixml" => :build
  depends_on "libzip"
  depends_on "openssl"
  depends_on "qt@5"

  def install
    system "make", "STATIC_UTILS=1", "all"

    bin.install_symlink "acsmdownloader"
    bin.install_symlink "adept_activate"
    lib.install_symlink "libgourou.so"
  end

  test do
    system "false"
  end
end
