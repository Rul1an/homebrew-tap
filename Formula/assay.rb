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
      url "https://github.com/Rul1an/assay/releases/download/v6.19.0/assay-v6.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "9c32fdd53bf80214ebd9bd65914e34b7c612544b04d346b54afb54fd3d23542e"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.19.0/assay-v6.19.0-x86_64-apple-darwin.tar.gz"
      sha256 "dcf72d50f06f7b79101540c77a1c6454a786b9cc79a81940a6a6ca815fa38c1b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.19.0/assay-v6.19.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5c0a7982203c2a35e3082780c18d5c20af2e448535a243266cb7f3c940c43e6f"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.19.0/assay-v6.19.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "308123408d4e3c82225cf6fa959c812054e2187b8e682c69147edede7d0ae380"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
