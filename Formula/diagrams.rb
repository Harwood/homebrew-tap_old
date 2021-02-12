class Diagrams < Formula
	include Language::Python::Virtualenv

	desc ":art: Diagram as Code for prototyping cloud system architectures"
	head "https://github.com/mingrammer/diagrams.git", :using => :git
	homepage "https://diagrams.mingrammer.com"
	url "https://github.com/mingrammer/diagrams/archive/v0.17.0.tar.gz"
	sha256 "8f4c86e3a2ac6b465ea5b4fed6fff46161e24a88ba8b8fd78a09e36166ba7c56"
	license "MIT"

	depends_on "python@3.9"

	def install
		virtualenv_install_with_resources
	end
end
