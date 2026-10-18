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
      url "https://github.com/Rul1an/assay/releases/download/v6.14.1/assay-v6.14.1-aarch64-apple-darwin.tar.gz"
      sha256 "0c7efa7cca2ee0baa669bde52afa609056f27cb8267101bc7fe9942127fa911f"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.14.1/assay-v6.14.1-x86_64-apple-darwin.tar.gz"
      sha256 "64e023508871841c94026766c79f1b9243f542d7a31c693131334366551d7b47"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.14.1/assay-v6.14.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "972efe039ca474573c8d8b237e91c59776ab3a8f5b76c44146cd91fe20521b72"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.14.1/assay-v6.14.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8593eba248fc87028ca2ea95d6e1ea7e16603b2756da1408e796f90f9578b4e7"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
