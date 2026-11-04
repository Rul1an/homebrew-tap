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
      url "https://github.com/Rul1an/assay/releases/download/v6.22.0/assay-v6.22.0-aarch64-apple-darwin.tar.gz"
      sha256 "4fdb9939debdd841d5591d403f8d83eb3511d06ec77ff7e9327c324a0f9adf4c"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.22.0/assay-v6.22.0-x86_64-apple-darwin.tar.gz"
      sha256 "1c08a1eaa5126dee8c0476aa6524b79fb57cc590a3cf77a2de94a49bd41bed77"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.22.0/assay-v6.22.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "17e249bf168b2629aa0ac70ae1131ddf4be3f470eb75bfef4729bf752707a6e6"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.22.0/assay-v6.22.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "58289e650153219fff228aa32cba01c7ecb2fdec6c14fdf492869a3e39191064"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
