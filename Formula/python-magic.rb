# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class PythonMagic < Formula
  include Language::Python::Virtualenv

  desc "Python interface to the libmagic file type identification library"
  homepage ""
  url "https://files.pythonhosted.org/packages/3a/70/76b185393fecf78f81c12f9dc7b1df814df785f6acb545fc92b016e75a7e/python-magic-0.4.24.tar.gz"
  sha256 "de800df9fb50f8ec5974761054a708af6e4246b03b4bdaee993f948947b0ebcf"
  license ""

  depends_on "python"
  depends_on "libmagic"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "false"
  end
end
