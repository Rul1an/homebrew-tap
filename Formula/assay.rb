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
      url "https://github.com/Rul1an/assay/releases/download/v6.18.0/assay-v6.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "251db8f9aeb91b0e3f7ab8a024df4aa71f0a3d4eefca5091bf3781759abd2032"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.18.0/assay-v6.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "b4d51d936465a2829d5c1726d60c2eaefda8a880e074535a3f1b40f1fc9a2599"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.18.0/assay-v6.18.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "51a7c2b7261917f1f86c90993aa4da041e6830bb68a48a35cdfcf933bc6453e1"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.18.0/assay-v6.18.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3b2611b157d042e6d6dd376dc25c05c8cef5bcfa33a2cd0e56c4327d32c77435"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
