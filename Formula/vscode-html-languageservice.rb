class VscodeHtmlLanguageservice < Formula
  desc "HTML language server with Zed's workspace-edit tag rename patch"
  homepage "https://github.com/zed-industries/vscode-langservers-extracted"
  url "https://registry.npmjs.org/@zed-industries/vscode-langservers-extracted/-/vscode-langservers-extracted-4.10.7.tgz"
  sha256 "93e4e3b97c0af720ff5068187b7058ed9843c155cd47859db05ba53c12b38d78"
  license "MIT"

  bottle do
    root_url "https://github.com/HuaDeity/homebrew-tap/releases/download/vscode-html-languageservice-4.10.7"
    rebuild 3
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "36c9accb24cd2205c5f8e472cc7d0ece4b16c3d910f47d5cb14e340944da6a38"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "a633e13e816aa82b6e06c8601e602f63ded1119204163e6605b63478d59956c4"
  end

  depends_on "node"
  conflicts_with "vscode-langservers-extracted", because: "both provide vscode-html-language-server"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/vscode-html-language-server")
  end

  test do
    require "open3"

    json = <<~JSON
      {
        "jsonrpc": "2.0",
        "id": 1,
        "method": "initialize",
        "params": {
          "rootUri": null,
          "capabilities": {}
        }
      }
    JSON

    Open3.popen3("#{bin}/vscode-html-language-server", "--stdio") do |stdin, stdout|
      stdin.write "Content-Length: #{json.size}\r\n\r\n#{json}"
      sleep 3
      assert_match(/^Content-Length: \d+/i, stdout.readline)
    end
  end
end
