cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.6.1"
  sha256 arm:   "2bd7e7c5ce6c0c08838f4d3c233c0b2380412399ab7f3dc5a6e102176b3ee69c",
         intel: "5638483100676a049002b9ac17bedb3b63f06195b318e6a004bd77e1b516e9ee"

  url "https://github.com/imputnet/helium-macos/releases/download/#{version}/helium_#{version}_#{arch}-macos.dmg"
  name "Helium"
  desc "Private, fast, and honest web browser based on Chromium"
  homepage "https://github.com/imputnet/helium-chromium"

  livecheck do
    url :url
  end

  auto_updates true
  conflicts_with cask: "helium"
  depends_on macos: ">= :monterey"

  app "Helium.app"

  zap trash: [
    "~/Library/Application Support/net.imput.helium",
    "~/Library/Caches/net.imput.helium",
    "~/Library/HTTPStorages/net.imput.helium",
    "~/Library/Preferences/net.imput.helium.plist",
  ]
end
