class VscodeLangserversExtracted < Formula
  desc "HTML/CSS/JSON/ESLint/Markdown language servers with Zed's patched HTML server"
  homepage "https://github.com/zed-industries/vscode-langservers-extracted"
  url "https://registry.npmjs.org/vscode-langservers-extracted/-/vscode-langservers-extracted-4.10.0.tgz"
  version "4.10.7"
  sha256 "d6e2d090d09c4b91daa74e9e7462a3d3f244efb96aa5111004cfffa49d6dc9ef"
  license "MIT"

  bottle do
    sha256 cellar: :any_skip_relocation, all: "15af5b99737600753a84dbfe8dcb22799af0d40959d6f79449811c2f543823d7"
  end

  depends_on "huadeity/tap/vscode-html-languageservice"
  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/vscode-css-language-server"
    bin.install_symlink libexec/"bin/vscode-json-language-server"
    bin.install_symlink libexec/"bin/vscode-eslint-language-server"
    bin.install_symlink libexec/"bin/vscode-markdown-language-server"
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

    %w[css eslint json markdown].each do |lang|
      Open3.popen3("#{bin}/vscode-#{lang}-language-server", "--stdio") do |stdin, stdout|
        stdin.write "Content-Length: #{json.size}\r\n\r\n#{json}"
        sleep 3
        assert_match(/^Content-Length: \d+/i, stdout.readline)
      end
    end
  end
end
