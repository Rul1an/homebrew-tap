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
      url "https://github.com/Rul1an/assay/releases/download/v6.20.0/assay-v6.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "98ad036cad60bce28bda94c85975ad186740c6601653b2923f2b6123ed1e70aa"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.20.0/assay-v6.20.0-x86_64-apple-darwin.tar.gz"
      sha256 "933bf04fb87ed87f94aac0ceb706bc135bd3d0f94cdc59f088c54cd4a1f06363"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.20.0/assay-v6.20.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "78f4172bcc6bc0b2b6ee6a324e8702ea3cbec10ba75b22e66cc9197133e50b8e"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.20.0/assay-v6.20.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "82d5a7dc45f782e6c44e0a9474f1fd2023ab933b473cb035852a7dafafc77140"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
