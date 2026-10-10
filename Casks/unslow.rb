cask "unslow" do
  version "1.4.0"
  sha256 "72ebadf2f4aa019f1614cc2a8d168ae7f37c02a39feea5311e075b6708012134"

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
