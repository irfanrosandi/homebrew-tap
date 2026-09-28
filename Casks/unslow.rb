cask "unslow" do
  version "0.9.0"
  sha256 "0b6d1d4afa2257bcbf2188fca97607fc559187a67069fb968167ddf1034fbbee"

  url "https://unslow.app/downloads/Unslow-#{version}.dmg"
  name "Unslow"
  desc "Finds what is slowing the computer down and fixes what can be fixed"
  homepage "https://unslow.app/"

  livecheck do
    url "https://unslow.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Unslow.app"

  zap trash: [
    "~/Library/Application Support/Unslow",
    "~/Library/Caches/com.irfanrosandi.unslow",
    "~/Library/HTTPStorages/com.irfanrosandi.unslow",
    "~/Library/Preferences/com.irfanrosandi.unslow.plist",
  ]
end
