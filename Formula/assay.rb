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
      url "https://github.com/Rul1an/assay/releases/download/v6.15.0/assay-v6.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "4ce1a803b25d4530774227aebdefdbbe632b9a04951059a70a06a273050c52d4"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.15.0/assay-v6.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "e764aafa219435a2f224e6cd07e1fbbafd3d328e2951373dc3c7c5b05d1cdcfd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.15.0/assay-v6.15.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "78c1598f9065f16149382d869d55a16d2e2d01c64f94912afd19ba68bc007e9e"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.15.0/assay-v6.15.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "154792d94ca85fe346da526497aeb273b1072637c2f0696181795551238eedee"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
