class VscodeLangserversExtractedZed < Formula
  desc "HTML/CSS/JSON/ESLint/Markdown language servers with Zed's patched HTML server"
  homepage "https://github.com/zed-industries/vscode-langservers-extracted"
  url "https://registry.npmjs.org/vscode-langservers-extracted/-/vscode-langservers-extracted-4.10.0.tgz"
  version "4.10.8"
  sha256 "d6e2d090d09c4b91daa74e9e7462a3d3f244efb96aa5111004cfffa49d6dc9ef"
  license "MIT"

  livecheck do
    formula "huadeity/tap/vscode-html-languageservice"
  end

  depends_on "huadeity/tap/vscode-html-languageservice"
  depends_on "node"

  conflicts_with "vscode-langservers-extracted",
                 because: "both provide vscode-{css,json,eslint,markdown}-language-server"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/vscode-{css,json,eslint,markdown}-language-server")
  end

  test do
    %w[css eslint json markdown].each do |lang|
      assert_predicate bin/"vscode-#{lang}-language-server", :exist?
    end
  end
end
