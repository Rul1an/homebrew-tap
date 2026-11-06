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
      url "https://github.com/Rul1an/assay/releases/download/v6.22.2/assay-v6.22.2-aarch64-apple-darwin.tar.gz"
      sha256 "07983437e4e6a1c3f42605e06fc833c1ebb210ed51f326679801f152dd1fe070"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.22.2/assay-v6.22.2-x86_64-apple-darwin.tar.gz"
      sha256 "448220ef14c879b8103dc52658c1af2f3fdeeeb59f3327ebe030833897fe0f0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.22.2/assay-v6.22.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "41a80fbe1709c9586631daf0d41eae6c9fbf256e583d512e30e7f7120a695911"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.22.2/assay-v6.22.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c0a130c119b97463956e800e5e8d6d3220def552f8dd7b6553c1a914569a52ab"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
