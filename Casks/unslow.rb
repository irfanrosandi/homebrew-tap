cask "unslow" do
  version "1.3.3"
  sha256 "b848e60bd0d20a97503ae81757652c4ba18a6e58523daa6dadbaaee4b1f32f53"

  url "https://unslow.app/versions/Unslow-#{version}.dmg"
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
