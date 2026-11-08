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
      url "https://github.com/Rul1an/assay/releases/download/v6.23.0/assay-v6.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "e7885a1bde7b7bb6a411d31a71b8544602a05bc1f765c872b66d029b3dc16413"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.23.0/assay-v6.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "26fffb5dee782ebf033d58629d3aaa5bb7a150eddd1379a624efb95acff5dd19"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.23.0/assay-v6.23.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9b0feebc9a90bc5a3476cf5176c71c0a5993d2ff56abafef99c48f6e8673d2fd"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.23.0/assay-v6.23.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8c2a47fb10ccfd4179e6b48e3b9d772fec34727283b9baffc11f8816939f0f1b"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
