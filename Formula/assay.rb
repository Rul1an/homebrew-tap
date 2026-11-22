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
      url "https://github.com/Rul1an/assay/releases/download/v7.0.2/assay-v7.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "191c10feddc5faf2b52b90f4dd068727ba800399531233fba8644e1ec51087bf"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v7.0.2/assay-v7.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "e8890407cbd769b69f4d7415c3fc57fcf514f46a226e8f7888c811538c875d3c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v7.0.2/assay-v7.0.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b7e48ba5f068eb96aa8a0525fb332d854cdb5515b3c714edb4daa63e5566c71c"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v7.0.2/assay-v7.0.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "96e7c441fcd71ba7e1e2bc3e215a4799d60d63cdadd2a29f9a1be192000d8ad5"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
