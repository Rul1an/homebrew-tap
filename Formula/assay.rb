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
      url "https://github.com/Rul1an/assay/releases/download/v6.21.0/assay-v6.21.0-aarch64-apple-darwin.tar.gz"
      sha256 "347153dec7652d0cfc9168b01986aada1170dc6de68b811a64a20dd20c692e63"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.21.0/assay-v6.21.0-x86_64-apple-darwin.tar.gz"
      sha256 "340319fe9ac4d06b36f932b71c7d13c65bd90071b852b57037b23ca8c89e9445"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.21.0/assay-v6.21.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c7bd1bc9938083bf86de34523c708486c86c9dee80fec4624d308743e2f080e9"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.21.0/assay-v6.21.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d910a87dab06670a058848619923e6d90c929cb5e913ae263d81b3bacd79fbcc"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
