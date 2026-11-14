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
      url "https://github.com/Rul1an/assay/releases/download/v6.27.0/assay-v6.27.0-aarch64-apple-darwin.tar.gz"
      sha256 "8bf6da99b957d3b6c96a9e8a42359d1a1364c015d88227f912bd84a29f83820b"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.27.0/assay-v6.27.0-x86_64-apple-darwin.tar.gz"
      sha256 "d53daf21d9a4a8fe35b570b06a77c1a95f21ce160d3b386c5924de7dcd80d132"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.27.0/assay-v6.27.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1ec0997c92139f25b7a120f84ba34109f539b964c7f63eb452201c8d65f5ec37"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.27.0/assay-v6.27.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1e910c8cfb69cc3d7c21dc3e775f765febbd169e4f16c70fec991986a483e814"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
