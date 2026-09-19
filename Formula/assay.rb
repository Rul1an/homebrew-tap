class Assay < Formula
  desc "Policy-as-code gate for MCP agent tool calls with verifiable evidence"
  homepage "https://github.com/Rul1an/assay"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.6.2/assay-v6.6.2-aarch64-apple-darwin.tar.gz"
      sha256 "893c6193f10e8db5ffa3bbce510ee19ed6315220e6d7efa00b8c1819d7e911fd"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.6.2/assay-v6.6.2-x86_64-apple-darwin.tar.gz"
      sha256 "8105476c8d9056f34fdf0c68af2c52edc9f7d2415340c36b3a56baa3429da50d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.6.2/assay-v6.6.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "003ec6522752fe7cba36830fc14dc42d7d763742ed087225ab1d6608bdfb6300"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.6.2/assay-v6.6.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "82a697ef61f7d64e67fbb529e7c0485b7c53303b2a85b089b4408bce09612443"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
