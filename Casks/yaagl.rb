cask "yaagl" do
  version "0.1.8"
  sha256 "0c09576cd2be241bf806f3c15d0de6a74ea92d63dcec47aec27bbdd2836c99e1"

  url "https://github.com/3Shain/yet-another-anime-game-launcher/releases/download/#{version}/Yaagl.app.tar.gz"
  name "Yaagl"
  desc "Yet another anime game launcher"
  homepage "https://github.com/3Shain/yet-another-anime-game-launcher/"

  livecheck do
    url :url
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Yaagl.app"

  zap trash: [
    "~/Library/Application Support/Yaagl",
    "~/Library/Caches/com.3shain.yaagl",
    "~/Library/Saved Application State/com.3shain.yaagl.savedState",
    "~/Library/WebKit/com.3shain.yaagl",
  ]
end
