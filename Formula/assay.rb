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
      url "https://github.com/Rul1an/assay/releases/download/v7.0.3/assay-v7.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "b4c8aace55bba8a3ff2088275ea9e141bd637b2761c130bc56f2899ec46911d1"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v7.0.3/assay-v7.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "fc53ee4bc24ceb0c8ca8b97bced92116e9c3c53467553aef42dc76bb6bed1424"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v7.0.3/assay-v7.0.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f38038211067fb56f846ee66609d1434f9be5dfc2f3337f9a8fe1554e738628e"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v7.0.3/assay-v7.0.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b19a73b19be148b4beec65825703cbdbeea4b98e2968ec1925d820ef638f1c49"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
