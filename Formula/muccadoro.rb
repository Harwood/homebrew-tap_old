class Muccadoro < Formula
  desc "🍅 Pomodoro timer using figlet, cowsay, and optionally lolcat 🐮"
  head "https://github.com/meribold/muccadoro.git", :using => :git
  homepage "https://github.com/meribold/muccadoro"
  url "https://github.com/meribold/muccadoro/archive/v1.0.1.tar.gz"
  sha256 "1e881ab91a8f0f3e9d3e99427f4cf9f2c4023a78cc6ac5f5df6e2479ce71fb4b"
  license "Apache-2.0"

  depends_on "awk"
  depends_on "cowsay"
  depends_on "figlet"
  depends_on "lolcat"

  def install
    bin.install "muccadoro"
  end

  def test
    assert_predicate bin/"muccadoro", :exist?
  end
end
