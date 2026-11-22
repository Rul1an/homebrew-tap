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
      url "https://github.com/Rul1an/assay/releases/download/v7.0.1/assay-v7.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "0ff843fbed54896a3903824c51543f382dc6d37a70c48bb25416eb844a782050"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v7.0.1/assay-v7.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "d79d5f7ccae73b5733b2ced6775c45e67c31158ea620e3491e1476708a3fc8ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v7.0.1/assay-v7.0.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ad2a429c36a875086d211937d9cee483b0dd0fd1da1b830dc8e8865bb3e5679d"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v7.0.1/assay-v7.0.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0b73415774b4f705e7338e513600d6ead89284245c7aca8c66ae3c4924cfda0d"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
