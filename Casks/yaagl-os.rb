cask "yaagl-os" do
  version "0.1.11"
  sha256 "ab0764bc4c28fc702aa3b18eb6ac4884202f03231aace00d98d94dff130d77de"

  url "https://github.com/3Shain/yet-another-anime-game-launcher/releases/download/#{version}/Yaagl.OS.app.tar.gz"
  name "Yaagl OS"
  desc "Yet another anime game launcher OS Version"
  homepage "https://github.com/3Shain/yet-another-anime-game-launcher/"

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
end
