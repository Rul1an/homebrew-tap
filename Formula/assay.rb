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
      url "https://github.com/Rul1an/assay/releases/download/v6.18.1/assay-v6.18.1-aarch64-apple-darwin.tar.gz"
      sha256 "072b25cb5412329ce700c2434476628713f9d84d99a80c207f82a89ef131ce80"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.18.1/assay-v6.18.1-x86_64-apple-darwin.tar.gz"
      sha256 "7e2913adc27d397b81dbe939cc320b0e91ff58b1277c2e7329ceb1f44b562e4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.18.1/assay-v6.18.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0cc7adc3bb5aec6999ce6a775098d255c2f9f5048e1c98158e26f3f27eea198e"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.18.1/assay-v6.18.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f46d6f4b69ff4423910fd27f8c822a72c77cae89b8aab866de25f759a5e6314d"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
