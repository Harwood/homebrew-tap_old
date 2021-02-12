class Twofa < Formula
  desc "A TouchID-aware 2-factor authenticator for macOS"
  head "https://github.com/sqreen/twofa.git", using: :git
  homepage ""
  url "https://github.com/sqreen/twofa/archive/v0.0.2.tar.gz"
  sha256 "911dc1bee67ec8c165ed09b90f3f545bcdcd3fdfe4acc46487b6d863934d0905"
  license "MIT"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test twofa`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
