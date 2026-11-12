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
      url "https://github.com/Rul1an/assay/releases/download/v6.25.0/assay-v6.25.0-aarch64-apple-darwin.tar.gz"
      sha256 "fa4667164fdf67905aafbce19f7ed9f6ed820ec7abb8bb55188933aa55097980"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.25.0/assay-v6.25.0-x86_64-apple-darwin.tar.gz"
      sha256 "4237ace0829fe540260097a0d7b28f0903463e17ea2d49c9f5f25eb68cfdcc1f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.25.0/assay-v6.25.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f894d81c00513477057daecc81d008e39db789b46a0175aab040171ecf1c0af5"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.25.0/assay-v6.25.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9c3a9cfaa72e73794b9fbf73d4a93af983cd88b5c6981c31c9a95cf30405799d"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
