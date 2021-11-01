class Jitterbugpair < Formula
  desc "Launch JIT enabled iOS app with a second iOS device"
  homepage ""
  url "https://github.com/osy/Jitterbug/releases/download/v1.2.0/jitterbugpair-macos.zip"
  sha256 "2c7ace490934856e30579c827d3c158a243a7ea6209bb73761b968b0dfc7db47"
  license ""

  def install
    bin.install_symlink "jitterbugpair"
  end

  test do
    system "false"
  end
end
