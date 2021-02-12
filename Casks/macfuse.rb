cask "macfuse" do
  version "4.0.4"
  sha256 "5bc6c1a2b48649a2cb6b73be2ce26a1206aad5ed153f69378483a6c421491e76"

  url "https://github.com/osxfuse/osxfuse/releases/download/macfuse-#{version}/macfuse-#{version}.dmg"
  appcast "https://github.com/osxfuse/osxfuse/releases.atom"
  name "macFuse"
  desc "FUSE for macOS allows you to extend macOS via third party file systems."
  homepage "https://osxfuse.github.io/"

  app "i"

  pkg "Install.pkg",

end
