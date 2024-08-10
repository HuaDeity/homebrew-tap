cask "sleeve" do
  version "2.3.4,90"
  sha256 "51fb5275e8ae9adb8599244e8d1d0fc7a62f4072d65bac0707b79a03b3824819"

  url "https://replay-sleeve-distribution.s3.amazonaws.com/#{version.csv.second}/Sleeve.dmg",
      verified: "replay-sleeve-distribution.s3.amazonaws.com"
  name "Sleeve"
  desc "Ultimate music accessory"
  homepage "https://replay.software/sleeve"

  livecheck do
    url "https://replay-sleeve-distribution.s3.amazonaws.com/changelog.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Sleeve.app"

  zap trash: [
    "~/Library/Application Scripts/com.replay.sleeve",
    "~/Library/Application Scripts/com.replay.sleeve-LaunchAtLoginHelper",
    "~/Library/Containers/com.replay.sleeve",
    "~/Library/Containers/com.replay.sleeve-LaunchAtLoginHelper",
  ]
end
