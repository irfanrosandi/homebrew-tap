cask "unslow" do
  version "0.6.0"
  sha256 "50c353b4fc2c0528cbb6870a5b1186f652c08b39131caefc0121768e64d303ef"

  url "https://unslow.app/downloads/Unslow-#{version}.dmg"
  name "Unslow"
  desc "Finds why your Mac is slow and fixes what can be fixed"
  homepage "https://unslow.app/"

  livecheck do
    url "https://unslow.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Unslow.app"

  zap trash: [
    "~/Library/Application Support/Unslow",
    "~/Library/Caches/com.irfanrosandi.unslow",
    "~/Library/HTTPStorages/com.irfanrosandi.unslow",
    "~/Library/Preferences/com.irfanrosandi.unslow.plist",
  ]
end
