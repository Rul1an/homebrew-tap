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
      url "https://github.com/Rul1an/assay/releases/download/v6.16.0/assay-v6.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "5ce834e8d1fa6852678b9a20b197393f4784de2411ec3ac20a8e2e6ffef6518d"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.16.0/assay-v6.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "643b301cd5905f2d2679732680d1a20dba93272b697b6b4a8455c279f8acdc98"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.16.0/assay-v6.16.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "08ed2746e756dafb2c4f6eb37e85dfafc11bbc1f32a926064f0060456d21da4f"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.16.0/assay-v6.16.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ca599d6050228659b063f1e0295b664e5ff79f65f5867337cb694399d04b698"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
