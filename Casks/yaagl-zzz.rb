cask "yaagl-zzz" do
  version "0.3.0"
  sha256 "ea978fa929c632e1653d63781e4abf4fe6063e0816c5be25744e6850f3fad68a"

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
