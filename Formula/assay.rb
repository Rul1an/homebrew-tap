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
      url "https://github.com/Rul1an/assay/releases/download/v7.0.0/assay-v7.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "c018432b8ac802437022b2fbd1b73daa24842e1591d4d967a90fb93164977822"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v7.0.0/assay-v7.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "9d844666fbf4cf53641d56877b81089a22f90c0097a5a21869f1e0711882224d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v7.0.0/assay-v7.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fd960fc1f6bd3ebdf0b1180b57dc87bb5d29260ee4602d72ba642b4b94fbba8f"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v7.0.0/assay-v7.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "00761a3592e3c3d3f312f6df5975de34af4f59f5c2679a4f9c8b1b719bfe7d45"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
