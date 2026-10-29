cask "yaagl-zzz-os" do
  version "0.4.0"
  sha256 "6afff5e5cc2ade249e75b4d8c911f4ab700418f1c3b04e6418e8171ee43ff5c3"

  url "https://github.com/yaagl/yet-another-anime-game-launcher/releases/download/#{version}/Yaagl.ZZZ.OS.app.tar.gz"
  name "Yaagl ZZZ OS"
  desc "Yet another anime game launcher for ZZZ OS Version"
  homepage "https://github.com/yaagl/yet-another-anime-game-launcher/"

  livecheck do
    url :url
  end

  auto_updates true
  depends_on macos: :ventura

  app "Yaagl ZZZ OS.app"

  zap trash: [
    "~/Library/Application Support/Yaagl ZZZ OS",
    "~/Library/Caches/com.3shain.yaagl.nap.os",
    "~/Library/Saved Application State/com.3shain.yaagl.nap.os.savedState",
    "~/Library/WebKit/com.3shain.yaagl.nap.os",
  ]
end
