cask "yaagl-zzz" do
  version "0.2.25"
  sha256 "7111f14dace9e94c60f4170ddc581a45bd97a93eeefb3bb507e5d80a2361e66c"

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
