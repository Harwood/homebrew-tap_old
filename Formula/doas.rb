class Doas < Formula
  desc "A port of OpenBSD's doas which runs on FreeBSD, Linux, NetBSD, and illumos"
  homepage "https://github.com/slicer69/doas"
  url "https://github.com/slicer69/doas/archive/refs/tags/6.3p5.tar.gz"
  sha256 "22a8ffdd759be7728d16127d13c423b6a6ada8a776c0c392835e69d2f101052c"
  license "BSD-2-Clause"

  depends_on "make" => :build
  depends_on :xcode => :build

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "false"
  end
end
