cask "yaagl-os" do
  version "0.3.8"
  sha256 "3357fee2341bf73bc11999031dd40a0380db69fea023ae0bd64f075761608d6c"

  url "https://github.com/yaagl/yet-another-anime-game-launcher/releases/download/#{version}/Yaagl.OS.app.tar.gz"
  name "Yaagl OS"
  desc "Yet another anime game launcher OS Version"
  homepage "https://github.com/yaagl/yet-another-anime-game-launcher/"

  livecheck do
    url :url
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Yaagl OS.app"

  zap trash: [
    "~/Library/Application Support/Yaagl OS",
    "~/Library/Caches/com.3shain.yaagl.os",
    "~/Library/Saved Application State/com.3shain.yaagl.os.savedState",
    "~/Library/WebKit/com.3shain.yaagl.os",
  ]
end
