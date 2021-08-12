class DataCli < Formula
  version "0.9.5"
  sha256 "b12d6abe387fa46271d123d0218f3ae092c0f3be0cb9ce9772b536301ebf5830"

  desc "data - command line tool for working with data, Data Packages and the DataHub"
  homepage "http://datahub.io/docs/features/data-cli"
  url "https://github.com/datopian/data-cli/releases/download/v#{version}/data-macos.gz"
  license "ISC"

  def install
    bin.install "data-macos" => "data"
  end
end
