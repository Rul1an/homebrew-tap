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
      url "https://github.com/Rul1an/assay/releases/download/v6.22.3/assay-v6.22.3-aarch64-apple-darwin.tar.gz"
      sha256 "962f053dedc8334b2842fd23fcd66e4322e62d0023cce0fb14b37a31727f562f"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.22.3/assay-v6.22.3-x86_64-apple-darwin.tar.gz"
      sha256 "1411daad9585a55a41950dd6c8fa258e482e8fbd901a464cfc5d8fef23ada3a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.22.3/assay-v6.22.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "45d3f935bdc50f0851d689bbd50237bfe18cc52cec3bd84f169621c4beb782aa"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.22.3/assay-v6.22.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2fc2cb139b8869e17cad81dc7625e2b9dc350ce2e7fa3aff55d9b6cc5aebec91"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
