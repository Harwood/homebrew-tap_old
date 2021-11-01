require "language/node"

class Gitern < Formula
  desc "muh lord, gitern is a git host for hackers"
  homepage "https://gitern.com"
  url "https://files.gitern.com/gitern-darwin-x64.tar.gz"
  sha256 "a5710372343c930b37bf8475f8f398472b6b9e018de2f589da01d397723bc149"
  license "MIT"

  depends_on "git-remote-gitern"
  depends_on "node" => :build

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "false"
  end
end
