cask "yaagl-zzz-os" do
  version "0.2.12"
  sha256 "4755d1bf63800c2a24df181c1f976201f078d92b90f25233c3c66d08ea9fa7e6"

  url "https://github.com/yaagl/yet-another-anime-game-launcher/releases/download/#{version}/Yaagl.ZZZ.OS.app.tar.gz"
  name "Yaagl ZZZ OS"
  desc "Yet another anime game launcher for ZZZ OS Version"
  homepage "https://github.com/yaagl/yet-another-anime-game-launcher/"

  livecheck do
    url :url
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Yaagl ZZZ OS.app"

  zap trash: [
    "~/Library/Application Support/Yaagl ZZZ OS",
    "~/Library/Caches/com.3shain.yaagl.nap.os",
    "~/Library/Saved Application State/com.3shain.yaagl.nap.os.savedState",
    "~/Library/WebKit/com.3shain.yaagl.nap.os",
  ]

  caveats do
    requires_rosetta
  end
end
