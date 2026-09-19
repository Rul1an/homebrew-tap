class Assay < Formula
  desc "Policy-as-code gate for MCP agent tool calls with verifiable evidence"
  homepage "https://github.com/Rul1an/assay"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.6.1/assay-v6.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "b9d19a4822d21388735f46f7b7a279d4dc5e8c1aa554be8ab8e7df92f19bc718"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.6.1/assay-v6.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "2a90ca60f78c86185b7f3386e1a9e8667fe5503a3e10f7acbfba2ad89e18bbc1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.6.1/assay-v6.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "67cd3761df5d441e71eb7c8b96c343e9804490d2e06fe3bc5df6d24adfe5c5f7"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.6.1/assay-v6.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "94feae9b01bb1682d214c09007c86b499d8b77030b8dd8e00b787bf32e2b5b5b"
    end
  end

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
