cask "yaagl-os" do
  version "0.2.21"
  sha256 "e6bc5185045257da41a7f7421f198b9f88b6a941749c3a0e9c05e5fddf39452c"

  url "https://github.com/yaagl/yet-another-anime-game-launcher/releases/download/#{version}/Yaagl.OS.app.tar.gz"
  name "Yaagl OS"
  desc "Yet another anime game launcher OS Version"
  homepage "https://github.com/yaagl/yet-another-anime-game-launcher/"

  livecheck do
    url :url
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Yaagl OS.app"

  zap trash: [
    "~/Library/Application Support/Yaagl OS",
    "~/Library/Caches/com.3shain.yaagl.os",
    "~/Library/Saved Application State/com.3shain.yaagl.os.savedState",
    "~/Library/WebKit/com.3shain.yaagl.os",
  ]

  caveats do
    requires_rosetta
  end
end
