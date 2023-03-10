cask "sleeve" do
  version "2.1,64"
  sha256 :no_check

  url "https://replay-sleeve-distribution.s3.us-east-1.amazonaws.com/latest/Sleeve.dmg",
      verified: "replay-sleeve-distribution.s3.us-east-1.amazonaws.com"
  name "Sleeve"
  desc "Ultimate music accessory"
  homepage "https://replay.software/sleeve"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :big_sur"

  app "Sleeve.app"

  zap trash: [
    "~/Library/Application Scripts/com.replay.sleeve",
    "~/Library/Application Scripts/com.replay.sleeve-LaunchAtLoginHelper",
    "~/Library/Containers/com.replay.sleeve",
    "~/Library/Containers/com.replay.sleeve-LaunchAtLoginHelper",
  ]
end
