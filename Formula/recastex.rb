# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Recastex < Formula
  include Language::Python::Virtualenv

  desc "Recast podcasts downloaded with git-annex"
  homepage "https://github.com/stewart123579/recastex"
  url "https://github.com/stewart123579/recastex/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "f1fc6f10c68a9627fb1a39c786e5aa00de20bc8ea174963005ea2cfd74489607"
  license "NOASSERTION"

  depends_on "python@3.9"

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/a0/a4/d63f2d7597e1a4b55aa3b4d6c5b029991d3b824b5bd331af8d4ab1ed687d/PyYAML-5.4.1.tar.gz"
    sha256 "607774cbba28732bfa802b54baa7484215f530991055bb562efbed5b2f20a45e"
  end

  resource "feedgen" do
    url "https://files.pythonhosted.org/packages/0b/60/7714c7f1339e063ad2e0964870797610c23191c180fc2713be100cc82d1a/feedgen-0.9.0.tar.gz"
    sha256 "8e811bdbbed6570034950db23a4388453628a70e689a6e8303ccec430f5a804a"
  end

  resource "feedparser" do
    url "https://files.pythonhosted.org/packages/96/c2/5c5c266988142936ca81aaa22e5ef3750cce49e10c0ee9d0b9feda167491/feedparser-6.0.8.tar.gz"
    sha256 "5ce0410a05ab248c8c7cfca3a0ea2203968ee9ff4486067379af4827a59f9661"
  end

  def install
    ENV.prepend_path "PATH", Formula["python@3.9"].opt_libexec/"bin"
    venv = virtualenv_create(libexec, "python3")

    venv.pip_install resources

    bin.mkpath
    bin.install "recastex"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test recastex`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
