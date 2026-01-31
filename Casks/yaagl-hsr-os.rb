cask "yaagl-hsr-os" do
  version "0.3.8"
  sha256 "2416aba2841e9ddbb8a04bcf424877cbf12b9720a928dc3d3e93ec16e777073d"

  url "https://github.com/yaagl/yet-another-anime-game-launcher/releases/download/#{version}/Yaagl.HSR.OS.app.tar.gz"
  name "Yaagl HSR OS"
  desc "Yet another anime game launcher for HSR OS Version"
  homepage "https://github.com/yaagl/yet-another-anime-game-launcher/"

  livecheck do
    url :url
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Yaagl HSR OS.app"

  zap trash: [
    "~/Library/Application Support/Yaagl HSR OS",
    "~/Library/Caches/com.3shain.yaagl.hkrpg.os",
    "~/Library/Saved Application State/com.3shain.yaagl.hkrpg.os.savedState",
    "~/Library/WebKit/com.3shain.yaagl.hkrpg.os",
  ]
end
