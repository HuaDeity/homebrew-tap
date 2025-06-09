cask "yaagl-hsr" do
  version "0.2.23"
  sha256 "f385f17b1956afe0ff62ff021dc37bf2103f1c463c291cfcca20cf01b200b6d3"

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
