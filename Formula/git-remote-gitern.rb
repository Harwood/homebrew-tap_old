require 'language/node'

class GitRemoteGitern < Formula
  homepage "https://gitern.com"
  desc "muh lord, gitern is a git host for hackers"
  license "MIT"

  url "https://github.com/huumn/git-remote-gitern/archive/3da454bf34921cf874ece1a75a7b8c2c58ea6fa8.tar.gz"
  sha256 "87d13a3e9aa2a3b4e19926b23d80eba851d5d390ab1debece58e7d8492c11a38"
  head "https://github.com/huumn/git-remote-gitern.git", :using => :git

  depends_on "node" => :build

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
