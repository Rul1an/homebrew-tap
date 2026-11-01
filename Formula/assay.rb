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
      url "https://github.com/Rul1an/assay/releases/download/v6.19.1/assay-v6.19.1-aarch64-apple-darwin.tar.gz"
      sha256 "84dcdc725d04b5148525b21c4973ad7b2d049b0a3d23ec3fa1a2b1aacb5481ca"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.19.1/assay-v6.19.1-x86_64-apple-darwin.tar.gz"
      sha256 "3357d8bd2b7a7d43590c8f3b73001f60ea4abffa8671e8728a9ab35eb8cc198d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.19.1/assay-v6.19.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e435adc4a484ddd0a6decd8514e28757ae3f22de3daf35d1aff96ef74f94b91e"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.19.1/assay-v6.19.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eb95ea34d50d6ff4a0830a83eadfe492ccf93f7ff5173a60c368f4aa9eaf2057"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
