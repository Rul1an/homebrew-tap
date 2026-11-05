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
      url "https://github.com/Rul1an/assay/releases/download/v6.22.1/assay-v6.22.1-aarch64-apple-darwin.tar.gz"
      sha256 "54296e613923b91573d90cc63c9b705777adb4991600a0e341aef21261224ddb"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.22.1/assay-v6.22.1-x86_64-apple-darwin.tar.gz"
      sha256 "5721790cc89429f26589aff864b2c2ac13edfe03faa08f6768db6c2651699242"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.22.1/assay-v6.22.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f68e75b7eead88263b939c27d24f48f5110cf7927ece0d741a49ff38b9ab0f37"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.22.1/assay-v6.22.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "80940f3617112de20efeaba1e24652fe93fce2e0cbe7e0ab7c6849af0c640c99"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
