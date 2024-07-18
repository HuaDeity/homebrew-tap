cask "yaagl-zzz" do
  version "0.1.17"
  sha256 "748b8caeffc14f0c8a4e307245b50526068eeef8ba9d185f38be91c34a1625d9"

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

  caveats do
    requires_rosetta
  end
end
