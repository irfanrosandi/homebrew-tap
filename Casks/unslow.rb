cask "unslow" do
  version "1.5.0"
  sha256 "8911bbf9379c42503ff7340b0c313fae4119e78440054c703e5b3cd2da7c1b97"

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
