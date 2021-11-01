class Bashly < Formula
  version "0.6.3"

  desc "Bash command line framework and CLI generator"
  homepage "https://bashly.dannyb.co"
  url "https://github.com/DannyBen/bashly/archive/refs/tags/v#{version}.tar.gz"
  sha256 "9d710201436773928d4ae6d4e7839df440a150f766de2c107f9f236394ebd7d1"
  license "MIT"

  head "https://github.com/DannyBen/bashly.git", 
    using: :git

  livecheck do
    url :stable
    regex(/^v(\d+(?:\.\d+)+)$/i)
  end

  bottle :unneeded

  uses_from_macos "ruby"

  resource "byebug" do
    url "https://rubygems.org/downloads/byebug-11.1.3.gem"
    sha256 "2485944d2bb21283c593d562f9ae1019bf80002143cc3a255aaffd4e9cf4a35b"
  end
  resource "lp" do
    url "https://rubygems.org/downloads/lp-0.2.1.gem"
    sha256 "d9fb072caf2cb232acd77a6719e6898e62f388d52dbcaa0f4f225931d457415b"
  end
  resource "rspec" do
    url "https://rubygems.org/downloads/rspec-3.10.0.gem"
    sha256 "b870b43d49ae4a4e063b94976d2742b0854ec10458c425d569b5556ee5898ab7"
  end
  resource "rspec_approvals" do
    url "https://rubygems.org/downloads/rspec-approvals-0.0.5.gem"
    sha256 "949966451d31b5f16fad9a405484f93d591b35668c63ca8e10717095b156b110"
  end
  resource "runfile" do
    url "https://rubygems.org/downloads/runfile-0.11.2.gem"
    sha256 "be11eda83423a5cf9035e528f1aa738b22612aba0605981d7a9414125f8ef8d6"
  end
  resource "runfile-tasks" do
    url "https://rubygems.org/downloads/runfile-tasks-0.5.2.gem"
    sha256 "e67ac6b24c8eb987e7fcc61c986bde5e3d9612c063e6fb5301953f4bef47afda"
  end
  resource "simplecov" do
    url "https://rubygems.org/downloads/simplecov-0.21.2.gem"
    sha256 "990db6aedb55086d6bf8874993ff1f796e4830abfa11937468ca502a0d013bc3"
  end

  def install
    resources.each do |r|
      r.stage do
        system "gem", "install", r.cached_download, "--ignore-dependencies",
             "--no-document", "--install-dir", libexec
        # inreplace "Gemfile", "/(#{r.name})$/", "\1, path: vendor/\1"
      end
    end

    prefix.install_symlink Dir["vendor"]
    lib.install_symlink Dir["lib/*"]
    bin.install_symlink "bin/*"
    bin.env_script_all_files(libexec/"bin", :GEM_HOME => ENV["GEM_HOME"])
  end

  test do
    system "false"
  end
end
