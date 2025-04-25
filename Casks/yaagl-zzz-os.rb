cask "yaagl-zzz-os" do
  version "0.2.22"
  sha256 "33eac8f6075d41ad2599a154569630df501c33bf56bebf3c0afd1f9d71570686"

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
