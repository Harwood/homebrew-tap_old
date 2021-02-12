class PassImport < Formula
  include Language::Python::Virtualenv

  desc "A pass extension for importing data from most of the existing password manager."
  homepage "https://github.com/roddhjav/pass-import"
  url "https://files.pythonhosted.org/packages/53/71/34e27e562b0a60c87326146a19c74b5a9c48bfded4dc94c9911bef4b9bbe/pass-import-3.1.tar.gz"
  sha256 "301490b955cac3ba2ff90cdccbf897797cc41eeac5e05b2f7a5d7240e1545d0c"
  license "GPL-3.0"

  depends_on "pass"
  depends_on "python@3.9"

  resource "pyaml" do
    url "https://files.pythonhosted.org/packages/f1/cc/01712c4fa0e5b6f9f90d01d5adc46c9ad14bb6284406d13cde3ed7392082/pyaml-20.4.0.tar.gz"
    sha256 "29a5c2a68660a799103d6949167bd6c7953d031449d08802386372de1db6ad71"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/64/c2/b80047c7ac2478f9501676c988a5411ed5572f35d1beff9cae07d321512c/PyYAML-5.3.1.tar.gz"
    sha256 "b8eac752c5e14d3eca0e6dd9199cd627518cb5ec06add0de9d32baeee6fe645d"
  end 
  
  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/94/5c/42de91c7fbdb817b2d9a4e64b067946eb38a4eb36c1a09c96c87a0f86a82/cryptography-3.2.1.tar.gz"
    sha256 "d3d5e10be0cf2a12214ddee45c6bd203dab435e3d83b4560c03066eda600bfe3"
  end

  resource "defusedxml" do
    url "https://files.pythonhosted.org/packages/a4/5f/f8aa58ca0cf01cbcee728abc9d88bfeb74e95e6cb4334cfd5bed5673ea77/defusedxml-0.6.0.tar.gz"
    sha256 "f684034d135af4c6cbb949b8a4d2ed61634515257a67299e5f940fbaa34377f5"
  end

  resource "file-magic" do
    url "https://files.pythonhosted.org/packages/bc/e5/818e16cc2100898a5ab313e6a468a04390e6157fed539c98deab40015454/file-magic-0.4.0.tar.gz"
    sha256 "4dd1492b9a9ca57c272aaa9cc495cd65310115b2aec5503c7d047ad9bfae1035"
  end

  resource "pykeepass" do
    url "https://files.pythonhosted.org/packages/90/cb/a0427dcd2ea2d619807f8a6dc36f0ae4e09054fc77e6e6c5fbc13fe9f53a/keepass-1.2.tar.gz"
    sha256 "7fc4dfd7d0c535de8e71642b8fec312327314d9df4ae9b6649136dabfe9df27f"
  end

  resource "secretstorage" do
    url "https://files.pythonhosted.org/packages/ec/6e/2b7f0a6d85e20c918cce50ea89e5f72081d56088c98c4fa71e483c3b2826/SecretStorage-3.3.0.tar.gz"
    sha256 "30cfdef28829dad64d6ea1ed08f8eff6aa115a77068926bcc9f5225d5a3246aa"
  end

  def install
    virtualenv_install_with_resources
  end
end
