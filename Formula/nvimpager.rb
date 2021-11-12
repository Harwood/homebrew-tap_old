# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Nvimpager < Formula
  desc "Use nvim as a pager to view manpages, diffs, etc with nvim's syntax highlighting"
  homepage "https://github.com/lucc/nvimpager"
  url "https://github.com/lucc/nvimpager/archive/refs/tags/v0.10.3.tar.gz"
  sha256 "c369c75f3de0c95d8ceca5ab13deaae22626b08bcd2f98b2b42df85ca60d7609"
  license "NOASSERTION"

  # depends_on "cmake" => :build
  depends_on "nvim"
  depends_on "bash"
  depends_on "scdoc" => :build

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test nvimpager`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
