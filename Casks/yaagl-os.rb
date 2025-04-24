cask "yaagl-os" do
  version "0.2.22"
  sha256 "d43fae271b27f010b0891e97520f405cf51e1b624ba3b93b08343a762f2412f9"

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
