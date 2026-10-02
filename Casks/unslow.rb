cask "unslow" do
  version "1.2.0"
  sha256 "35cfd30abfbeddf0911a6bdb94bb883843bbcafddbbf390f7c41db349a6b678b"

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
