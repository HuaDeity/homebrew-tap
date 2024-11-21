cask "yaagl" do
  version "0.2.10"
  sha256 "f42abc07e2f67033899a0658af2d6bb395ebc754cb3ed725ab0c578376c3410b"

  url "https://github.com/yaagl/yet-another-anime-game-launcher/releases/download/#{version}/Yaagl.app.tar.gz"
  name "Yaagl"
  desc "Yet another anime game launcher"
  homepage "https://github.com/yaagl/yet-another-anime-game-launcher/"

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

  caveats do
    requires_rosetta
  end
end
