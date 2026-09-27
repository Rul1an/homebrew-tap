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
      url "https://github.com/Rul1an/assay/releases/download/v6.9.0/assay-v6.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "4e80ce6b1a5972400855b7eb12742548e92129c1d2c54b9180f4448efb614935"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.9.0/assay-v6.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "0cdf5e0b3fbc0bbea4036c7b2e220169765e317c065f50daf552934d9354c36d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.9.0/assay-v6.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0668995fd198c2bf81063790c5512a978436a56dd50e733653588149c6412ee9"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.9.0/assay-v6.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7d4d05c3f59f40d28ff7847d34244777b5fdd3507e0e36616303ad85e45e3228"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
