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
      url "https://github.com/Rul1an/assay/releases/download/v6.28.0/assay-v6.28.0-aarch64-apple-darwin.tar.gz"
      sha256 "10f2a2f54da16c66f9c8af46d630ffb1a965094d6fc77f48ffc9b9cce5166051"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.28.0/assay-v6.28.0-x86_64-apple-darwin.tar.gz"
      sha256 "2d2a1985cd2af0a7f1200b56cdc63bc440c0e8b70cd30e1642739011015d27be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.28.0/assay-v6.28.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ae41fe6d37c6bf22c394661b182b5d18da580cbb7348508667151cdadb7adc26"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.28.0/assay-v6.28.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5dc24115d27ff089e35eb7f7d50120a4eebfcc7784947bcfc1732ea935a25b4b"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
