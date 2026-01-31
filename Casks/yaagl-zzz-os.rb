cask "yaagl-zzz-os" do
  version "0.3.8"
  sha256 "6a264df875d70257403bd4b2ae60869c26e033b83970f3b7121e4b203ecc8122"

  url "https://github.com/yaagl/yet-another-anime-game-launcher/releases/download/#{version}/Yaagl.ZZZ.OS.app.tar.gz"
  name "Yaagl ZZZ OS"
  desc "Yet another anime game launcher for ZZZ OS Version"
  homepage "https://github.com/yaagl/yet-another-anime-game-launcher/"

  livecheck do
    url :url
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Yaagl ZZZ OS.app"

  zap trash: [
    "~/Library/Application Support/Yaagl ZZZ OS",
    "~/Library/Caches/com.3shain.yaagl.nap.os",
    "~/Library/Saved Application State/com.3shain.yaagl.nap.os.savedState",
    "~/Library/WebKit/com.3shain.yaagl.nap.os",
  ]
end
