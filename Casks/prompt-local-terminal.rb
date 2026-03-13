cask "prompt-local-terminal" do
  version "3.0.4"
  sha256 "6b8dde59e01572b5fcfc40d6619870d80451b16134b58aee1c2ab5ed45a4702e"

  url "https://download-cdn.panic.com/prompt/Install%20Prompt%20Local%20Terminal%20#{version}.zip"
  name "Prompt Local Terminal"
  desc "Helper to enable local terminal access in Prompt"
  homepage "https://help.panic.com/prompt/prompt-local-terminal/"

  livecheck do
    url "https://download-cdn.panic.com/prompt/"
    regex(/href=.*?Install%20Prompt%20Local%20Terminal%20v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :ventura"

  pkg "Install Prompt Local Terminal.pkg"

  uninstall launchctl: "com.panic.LocalTerminal",
            pkgutil:   "com.panic.LocalTerminal",
            delete:    "/usr/local/bin/PromptLocalTerminal"
end
