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
      url "https://github.com/Rul1an/assay/releases/download/v6.14.0/assay-v6.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "274cdf02c32a6aebe2fab9a1689bf43fa6201e7cb4b4dcdb9271dd98e6eb168a"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.14.0/assay-v6.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "5fba754fccd7fdcd9f1caf9396b9c2d7aa12b34def3bcd158e4431310ac14e25"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.14.0/assay-v6.14.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1f66d529c373a4a2f62583df0c341894b52f5e002bc5766b5d306ecb16d9c306"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.14.0/assay-v6.14.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "69fe5e240141d593bb23e149782be85c539b028e247c8415583f20b569591312"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
