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
      url "https://github.com/Rul1an/assay/releases/download/v6.8.0/assay-v6.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "6d6b08441365ead14e46974247db0d0c5fe5f3465b1b21d62ada3d4f73a2a17f"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.8.0/assay-v6.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "1997f38467c28f4290d0a561ed5a2eccc9f3e58d4146c0623c06a7f185824209"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.8.0/assay-v6.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0b10e7a132892191c2fc3f87a25f3bdbebec456905a140af89e2a6cd05357aba"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.8.0/assay-v6.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6de541253ec32185593751e07ff8e753b662db8e369d0e8e182582fe6a1236cd"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
