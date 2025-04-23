cask "yaagl-hsr-os" do
  version "0.2.21"
  sha256 "bd8bafe475b77d5fdab4390f03d1aa5ba7519ddb858695ef4c6e8c3804d10cb3"

  url "https://github.com/yaagl/yet-another-anime-game-launcher/releases/download/#{version}/Yaagl.HSR.OS.app.tar.gz"
  name "Yaagl HSR OS"
  desc "Yet another anime game launcher for HSR OS Version"
  homepage "https://github.com/yaagl/yet-another-anime-game-launcher/"

  livecheck do
    url :url
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Yaagl HSR OS.app"

  zap trash: [
    "~/Library/Application Support/Yaagl HSR OS",
    "~/Library/Caches/com.3shain.yaagl.hkrpg.os",
    "~/Library/Saved Application State/com.3shain.yaagl.hkrpg.os.savedState",
    "~/Library/WebKit/com.3shain.yaagl.hkrpg.os",
  ]

  caveats do
    requires_rosetta
  end
end
