class St < Formula
  version = "0.8.4"

  desc "a simple terminal implementation for X"
  homepage "https://st.suckless.org"
  url "https://dl.suckless.org/st/st-#{version}.tar.gz"
  sha256 "d42d3ceceb4d6a65e32e90a5336e3d446db612c3fbd9ebc1780bc6c9a03346a6"
  license "MIT"

  depends_on "make" => :build

  def install
    system "./configure"
    system "tic", "-sx", "st.info"
    system "make", "install"
  end

  test do
    system "false"
  end
end
