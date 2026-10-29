cask "yaagl-os" do
  version "0.4.0"
  sha256 "1c7a9c41e0b7d26eb0c776cd9f70ee41920a5bb05749fd24d84224a71a00b89b"

  url "https://github.com/yaagl/yet-another-anime-game-launcher/releases/download/#{version}/Yaagl.OS.app.tar.gz"
  name "Yaagl OS"
  desc "Yet another anime game launcher OS Version"
  homepage "https://github.com/yaagl/yet-another-anime-game-launcher/"

  livecheck do
    url :url
  end

  auto_updates true
  depends_on macos: :ventura

  app "Yaagl OS.app"

  zap trash: [
    "~/Library/Application Support/Yaagl OS",
    "~/Library/Caches/com.3shain.yaagl.os",
    "~/Library/Saved Application State/com.3shain.yaagl.os.savedState",
    "~/Library/WebKit/com.3shain.yaagl.os",
  ]
end
