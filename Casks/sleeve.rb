cask "sleeve" do
  version "2.2.1,74"
  sha256 "da0adc4a3243a796876d5a588627157f175a79de8bbfb9d65673d2c03988ed3a"

  url "https://replay-sleeve-distribution.s3.amazonaws.com/#{version.csv.second}/Sleeve.dmg",
      verified: "replay-sleeve-distribution.s3.amazonaws.com"
  name "Sleeve"
  desc "Ultimate music accessory"
  homepage "https://replay.software/sleeve"

  livecheck do
    url "https://replay-sleeve-distribution.s3.amazonaws.com/changelog.xml"
    strategy :sparkle
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
