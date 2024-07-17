cask "yaagl-hsr" do
  version "0.1.17"
  sha256 "a665d7921941ae06a8eb02cb51c1273a684be194b966f7c182628142767ad5ec"

  url "https://github.com/yaagl/yet-another-anime-game-launcher/releases/download/#{version}/Yaagl.HSR.app.tar.gz"
  name "Yaagl HSR"
  desc "Yet another anime game launcher for HSR"
  homepage "https://github.com/yaagl/yet-another-anime-game-launcher/"

  livecheck do
    url :url
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Yaagl HSR.app"

  zap trash: [
    "~/Library/Application Support/Yaagl HSR",
    "~/Library/Caches/com.3shain.yaagl.hkrpg.cn",
    "~/Library/Saved Application State/com.3shain.yaagl.hkrpg.cn.savedState",
    "~/Library/WebKit/com.3shain.yaagl.hkrpg.cn",
  ]

  caveats do
    requires_rosetta
  end
end
