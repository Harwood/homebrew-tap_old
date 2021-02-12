cask "board-for-github" do
  version "1.0.10"
  sha256 "79b0b1a9ed4f1622343be091929fb7df88a820f0d14715017691edfad123ea1d"

  url "https://github.com/JustinFincher/BoardForGitHub/releases/download/#{version}/BoardForGitHub-#{version}.dmg"
  appcast "https://github.com/JustinFincher/BoardForGitHub/releases.atom"
  name "Board For GitHub"
  desc "A small application to monitor your GitHub project web page in a native macOS app :octocat:!"
  homepage "https://justinfincher.github.io/BoardForGitHub-Landing/"

  app "BoardForGithub.app"
end
