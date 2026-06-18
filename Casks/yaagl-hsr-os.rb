cask "yaagl-hsr-os" do
  version "0.3.18"
  sha256 "4d941cb0de2c66014f9477971304325661c607211f9f8e3138d2a1450da86905"

  url "https://github.com/yaagl/yet-another-anime-game-launcher/releases/download/#{version}/Yaagl.HSR.OS.app.tar.gz"
  name "Yaagl HSR OS"
  desc "Yet another anime game launcher for HSR OS Version"
  homepage "https://github.com/yaagl/yet-another-anime-game-launcher/"

  livecheck do
    url :url
  end

  auto_updates true
  depends_on macos: :catalina

  app "Yaagl HSR OS.app"

  zap trash: [
    "~/Library/Application Support/Yaagl HSR OS",
    "~/Library/Caches/com.3shain.yaagl.hkrpg.os",
    "~/Library/Saved Application State/com.3shain.yaagl.hkrpg.os.savedState",
    "~/Library/WebKit/com.3shain.yaagl.hkrpg.os",
  ]
end
