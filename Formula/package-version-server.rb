class PackageVersionServer < Formula
  desc "Language server that handles hover information in package.json files"
  homepage "https://github.com/zed-industries/package-version-server"
  url "https://github.com/zed-industries/package-version-server/archive/refs/tags/v0.0.10.tar.gz"
  sha256 "0ea78ae53981223fcad9eed35cf0f0e4a9f70619dafcff358d2efe11ab1b641d"
  license "MIT"
  head "https://github.com/zed-industries/package-version-server.git", branch: "main"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/huadeity/tap"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "f639979a635a276b8cff5b17b9ff98dfa420f78cfb60b4f31710fefa43871e3c"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "3a730c3ba9919fef8184d284f5ad6d312bc1b3994f72eb06db934d68cbbaa5d5"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "157c3d05bbf1f548ecc3400aa8fb115e1c312cca896d776b0676c2d5dcadabf2"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "8523c1dd0fee8b5ea9fdce47eeb721d1e1779230dcd8271457b069d3ec25bba3"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "577592d99ed9093a4077eee7282a5a193940c385cbd3a02b7c193fc4919756b0"
  end

  depends_on "pkgconf" => :build
  depends_on "rust" => :build

  on_linux do
    depends_on "openssl@3"
  end

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "package-version-server #{version}",
                 shell_output("#{bin}/package-version-server --version")

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

    Open3.popen3(bin/"package-version-server") do |stdin, stdout|
      stdin.write "Content-Length: #{json.size}\r\n\r\n#{json}"
      sleep 1
      assert_match(/^Content-Length: \d+/i, stdout.readline)
    end
  end
end
