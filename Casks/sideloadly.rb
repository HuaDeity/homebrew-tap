cask "sideloadly" do
  version "0.60"
  sha256 :no_check

  url "https://sideloadly.io/SideloadlySetup.dmg"
  name "Sideloadly"
  desc "Sideload IPA files to Apple devices"
  homepage "https://sideloadly.io/"

  livecheck do
    url "https://sideloadly.io/exe/darwin-amd64.json"
    strategy :json do |json|
      json["Version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Sideloadly.app"

  zap trash: [
    "~/Library/Application Support/sideloadly",
    "~/Library/Caches/sideloadly",
    "~/Library/LaunchAgents/io.sideloadly.daemon.plist",
    "~/Library/Preferences/io.sideloadly.daemon.plist",
    "~/Library/Preferences/io.sideloadly.sideloadly.plist",
    "~/Library/Saved Application State/io.sideloadly.sideloadly.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
