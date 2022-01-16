cask "logi-camera-settings" do
  version "3.0.23"
  sha256 "ff8ce22aab2ef7a4e63044585e34497cffd8edb0cc077902ca0da3dbb40f5ea2"

  url "https://download01.logi.com/web/ftp/pub/techsupport/cameras/Webcams/LogiCameraSettings_#{version}.pkg"
  name "Logi Camera Settings"
  desc "Provides easy access to camera controls"
  homepage "https://support.logi.com/hc/articles/360024361233"

  pkg "LogiCameraSettings_#{version}.pkg"
end
