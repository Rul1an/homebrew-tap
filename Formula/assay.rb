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
      url "https://github.com/Rul1an/assay/releases/download/v6.17.0/assay-v6.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "2cbd3b633439c21d4b1397c6ebc432f43adb934c7dffcd755debfb3e24a2e569"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.17.0/assay-v6.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "9942e06b630215b59c4860a4c427cdfa23232a3ecc16f4c5d459b1dd674bcfe0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.17.0/assay-v6.17.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "00d97c17bedf17080d2291250b8ff3188c4ac5a07dc48a29ad1c0b8fc5b360ce"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.17.0/assay-v6.17.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "56f4b0a6ceac1bc2ec43032a5fea19f8733669c681a3b4c5402a9fbc357f9a39"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
