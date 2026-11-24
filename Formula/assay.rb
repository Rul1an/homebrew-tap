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
      url "https://github.com/Rul1an/assay/releases/download/v8.0.1/assay-v8.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "0bb3a0ab40a097fd21c452e4739886a5a790fa0d88d582d4ba4224531c5a83c6"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v8.0.1/assay-v8.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "99f37da52671ced2ca340f33b516a99be9da9987214f6c548023d60565ae6eb2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v8.0.1/assay-v8.0.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "53fcb6e87a39009f20d6772e574e23ac1af95b3ef37ea2e842817750dc537e0c"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v8.0.1/assay-v8.0.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8142bc1b16ce7316ae19a40358d5c3c1ee68816500b42cf8c3e9e6c476dfd260"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
