cask "yaagl" do
  version "0.4.0"
  sha256 "7d8be6ace5161d061e8f8e9839f5f18ee2dc7e86a0f529e2d197f53697881687"

  url "https://github.com/yaagl/yet-another-anime-game-launcher/releases/download/#{version}/Yaagl.app.tar.gz"
  name "Yaagl"
  desc "Yet another anime game launcher"
  homepage "https://github.com/yaagl/yet-another-anime-game-launcher/"

  livecheck do
    url :url
  end

  auto_updates true
  depends_on macos: :ventura

  app "Yaagl.app"

  zap trash: [
    "~/Library/Application Support/Yaagl",
    "~/Library/Caches/com.3shain.yaagl",
    "~/Library/Saved Application State/com.3shain.yaagl.savedState",
    "~/Library/WebKit/com.3shain.yaagl",
  ]
end
