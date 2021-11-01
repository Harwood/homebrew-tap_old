class Webexec < Formula
  desc "WebRTC server for executing command over pseudo tty and piping it’s stdin & out over data channels"
  homepage "https://terminal7.dev"
  url "https://github.com/tuzig/webexec/releases/download/v0.10.20/webexec_0.10.20_darwin_arm64.tar.gz"
  sha256 "33ab58fbbad1b26171be741b9648193b6e002508cf188e737e973b76f343666b"
  license "MIT"

  def install
    bin.install "webexec"
  end
end
