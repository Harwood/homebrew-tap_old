cask "betterdummy" do
  version "1.0.7"
  sha256 "f21bbe804f42c31eb7f6dd82ffd3ea855b9a4847b4afb5ba717fdba55f45b7c1"

  url "https://github.com/waydabber/BetterDummy/releases/download/v#{version}/BetterDummy-v#{version}.zip"
  name "BetterDummy"
  desc "About Software Dummy Display Adapter for Apple Silicon Macs to Have Custom HiDPI Resolutions."
  homepage "https://github.com/waydabber/BetterDummy"

  app "BetterDummy.app"
end
