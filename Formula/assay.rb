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
      url "https://github.com/Rul1an/assay/releases/download/v6.12.0/assay-v6.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "66578ead965b808126995124876c0becf3a80cadcf112d2d8c0ce4bc6d404d84"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.12.0/assay-v6.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "e0c65299c3b8a1e40d2f3a448a0c002e9c507cadd0d7257419400ca23dd0fc7a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.12.0/assay-v6.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "458f8ccd92b6d8c744fbd63570560525db75f461729b1b2bb984507e0573c974"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.12.0/assay-v6.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9c657e4554a246d077c32796b9a3c0609a0ce2207555bb7f737eb49f49cdcae2"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
