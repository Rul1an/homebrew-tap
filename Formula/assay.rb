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
      url "https://github.com/Rul1an/assay/releases/download/v6.10.0/assay-v6.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "f27a2a386c9c76fcd9569fddd195a9c9f87bab412d284c95a8b1c4a11bc9ec05"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.10.0/assay-v6.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "9f24ff1b2e39419470d913daa7ed8317492af0e7a0088007458b2d422bcc5820"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.10.0/assay-v6.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5911e5e805ffbf3adc3224350c76a1fe136c3c097a2e9618c83ab15818c46a27"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.10.0/assay-v6.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c673266fba49879056d0447754fabfb0f705140bc5f878b122ebfe09c0159956"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
