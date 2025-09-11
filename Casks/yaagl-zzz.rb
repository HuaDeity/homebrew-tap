cask "yaagl-zzz" do
  version "0.2.28"
  sha256 "5e24f0827dbfa20fa118925a44b2a156c9d85e6e89f083c73154b69b04a448ad"

  url "https://github.com/yaagl/yet-another-anime-game-launcher/releases/download/#{version}/Yaagl.ZZZ.app.tar.gz"
  name "Yaagl ZZZ"
  desc "Yet another anime game launcher for ZZZ"
  homepage "https://github.com/yaagl/yet-another-anime-game-launcher/"

  livecheck do
    url :url
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Yaagl ZZZ.app"

  zap trash: [
    "~/Library/Application Support/Yaagl ZZZ",
    "~/Library/Caches/com.3shain.yaagl.nap.cn",
    "~/Library/Saved Application State/com.3shain.yaagl.nap.cn.savedState",
    "~/Library/WebKit/com.3shain.yaagl.nap.cn",
  ]
end
