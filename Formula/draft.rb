class Draft < Formula
  desc "Generate High Level Cloud Architecture diagrams using YAML syntax."
  homepage ""
  url "https://github.com/lucasepe/draft/releases/download/v0.8.0/draft_0.8.0_macOS_64-bit.tar.gz"
  sha256 "f3e5256f48a3514fe6b7cdb8ad16d805ea73e188cc0bef9fa0dab8c33d46f775"
  license "MIT"

  depends_on "go" => :build
  depends_on "graphviz"

  go_resource "github.com/emicklei/dot"
  go_resource "github.com/mitchellh/go-homedir"
  go_resource "github.con/rakyll/statik"

  def install
    ENV["GOPATH"] = buildpath
    system "cd", "cmd"
    system "go", "generate", "../..."
    system "go", "build", *std_go_args
  end
end
