# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class python-snack < Formula
  desc "Quick and dirty visualization of large-scale datasets via concept embeddings"
  homepage ""
  url "https://files.pythonhosted.org/packages/15/52/7889541bad6bd053c6554e3158c91cf0d4092b251b34de5fa35e20040968/snack-0.0.3.tar.gz"
  sha256 "98996b14811a9ce5efad938c32823bff998de104901982d98f214c73f9407096"
  license ""

  # depends_on "cmake" => :build
  depends_on "gcc"
  depends_on "openblas"
  depends_on "python"

  resource "numpy" do
    url "https://files.pythonhosted.org/packages/66/03/818876390c7ff4484d5a05398a618cfdaf0a2b9abb3a7c7ccd59fe181008/numpy-1.21.0.zip"
    sha256 "e80fe25cba41c124d04c662f33f6364909b985f2eb5998aaa5ae4b9587242cce"
  end

  resource "cython" do
    url "https://files.pythonhosted.org/packages/d9/cd/0d2d90b27219c07f68f1c25bcc7b02dd27639d2180add9d4b73e70945869/Cython-0.29.23.tar.gz"
    sha256 "6a0d31452f0245daacb14c979c77e093eb1a546c760816b5eed0047686baad8e"
  end


  def install
    #
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    #system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    resources.each do |r|
      r.stage do
        system "python3", 
      end
    end
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test snack`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
