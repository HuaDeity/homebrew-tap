cask "sleeve" do
  version "2.3.3,88"
  sha256 "077eff2942cfc45c175759592f81cffc1db00d66d5b53bc0600638f6f90f314e"

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
