cask "shureplus-motiv" do
  version "1.2.1"
  sha256 "2df7508affd12e4ee7686c849ef00aa5588bb751237c4e3a922786c047db84f0"

  url "https://content-files.shure.com/Software/shure_plus_motiv_desktop/1-2-1/MOTIV_mac_#{version}.dmg"
  name "ShurePlus MOTIV™"
  desc "Access additional features and controls on your MV7 or MV88+ with the free ShurePlus MOTIV™ App for desktop."
  homepage "https://www.shure.com/en-US/products/software/shure_plus_motiv_desktop"

  container type: :dmg

  app "ShurePlus MOTIV.app"
end
