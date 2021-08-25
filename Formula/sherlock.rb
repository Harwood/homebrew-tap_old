class Sherlock < Formula
  include Language::Python::Shebang
  include Language::Python::Virtualenv
  version "d0177bcfb4acc569908b263a88e045c8f7bf5cca"

  desc "Hunt down social media accounts by username across social networks"
  homepage "http://sherlock-project.github.io/"
  url "https://github.com/sherlock-project/sherlock/archive/#{version}.tar.gz"
  sha256 "8fe1d17ade257713ed39758678aaac84fcc7be1d9bca435e88d84966eb0a4585"
  license "MIT"

  head"https://github.com/sherlock-project/sherlock.git",
    using: :git

  bottle :unneeded

  depends_on "python@3.9"

  resource "beautifulsoup4" do
    url "https://files.pythonhosted.org/packages/6b/c3/d31704ae558dcca862e4ee8e8388f357af6c9d9acb0cad4ba0fbbd350d9a/beautifulsoup4-4.9.3.tar.gz"
    sha256 "84729e322ad1d5b4d25f805bfa05b902dd96450f43842c4e99067d5e1369eb25"
  end

  resource "bs4" do
    url "https://files.pythonhosted.org/packages/10/ed/7e8b97591f6f456174139ec089c769f89a94a1a4025fe967691de971f314/bs4-0.0.1.tar.gz"
    sha256 "36ecea1fd7cc5c0c6e4a1ff075df26d50da647b75376626cc186e2212886dd3a"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/6d/78/f8db8d57f520a54f0b8a438319c342c61c22759d8f9a1cd2e2180b5e5ea9/certifi-2021.5.30.tar.gz"
    sha256 "2bbf76fd432960138b3ef6dda3dde0544f27cbf8546c458e60baf371917ba9ee"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/1f/bb/5d3246097ab77fa083a61bd8d3d527b7ae063c7d8e8671b1cf8c4ec10cbe/colorama-0.4.4.tar.gz"
    sha256 "5941b2b48a20143d2267e95b1c2a7603ce057ee39fd88e7329b0c292aa16869b"
  end

  resource "lxml" do
    url "https://files.pythonhosted.org/packages/e5/21/a2e4517e3d216f0051687eea3d3317557bde68736f038a3b105ac3809247/lxml-4.6.3.tar.gz"
    sha256 "39b78571b3b30645ac77b95f7c69d1bffc4cf8c3b157c435a34da72e78c82468"
  end

  resource "PySocks" do
    url "https://files.pythonhosted.org/packages/bd/11/293dd436aea955d45fc4e8a35b6ae7270f5b8e00b53cf6c024c83b657a11/PySocks-1.7.1.tar.gz"
    sha256 "3f8804571ebe159c380ac6de37643bb4685970655d3bba243530d6558b799aa0"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/e7/01/3569e0b535fb2e4a6c384bdbed00c55b9d78b5084e0fb7f4d0bf523d7670/requests-2.26.0.tar.gz"
    sha256 "b8aa58f8cf793ffd8782d3d8cb19e66ef36f7aba4353eec859e74678b01b07a7"
  end

  resource "requests-futures" do
    url "https://files.pythonhosted.org/packages/47/c4/fd48d1ac5110a5457c71ac7cc4caa93da10a80b8de71112430e439bdee22/requests-futures-1.0.0.tar.gz"
    sha256 "35547502bf1958044716a03a2f47092a89efe8f9789ab0c4c528d9c9c30bc148"
  end

  resource "soupsieve" do
    url "https://files.pythonhosted.org/packages/c8/3f/e71d92e90771ac2d69986aa0e81cf0dfda6271e8483698f4847b861dd449/soupsieve-2.2.1.tar.gz"
    sha256 "052774848f448cf19c7e959adf5566904d525f33a3f8b6ba6f6f8f26ec7de0cc"
  end

  resource "stem" do
    url "https://files.pythonhosted.org/packages/71/bd/ab05ffcbfe74dca704e860312e00c53ef690b1ddcb23be7a4d9ea4f40260/stem-1.8.0.tar.gz"
    sha256 "a0b48ea6224e95f22aa34c0bc3415f0eb4667ddeae3dfb5e32a6920c185568c2"
  end

  resource "torrequest" do
    url "https://files.pythonhosted.org/packages/a3/d2/00538e47a2c80979231313c346a0abc3927c7b230d69eb923bb5b221ec62/torrequest-0.1.0.tar.gz"
    sha256 "3745d4ea3ffda98d7a034363c787adb37aab77bdab40094a4d937392cd4dae82"
  end

  def install
    resources.each do |r|
      r.stage do
        system 'python3', *Language::Python.setup_install_args(libexec/"vendor")
      end
    end

    libexec.install Dir["sherlock/*"]

    rewrite_shebang detected_python_shebang, libexec/"sherlock.py"
    system 'chmod', '+x', libexec/"sherlock.py"

    bin.install_symlink libexec/"sherlock.py" => "sherlock"
  end

  test do
    system "false"
  end
end
