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
      url "https://github.com/Rul1an/assay/releases/download/v6.6.3/assay-v6.6.3-aarch64-apple-darwin.tar.gz"
      sha256 "966bc24398da976dce9ecc36f542835054d4d76e59812df56cf0fc38e410edf6"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.6.3/assay-v6.6.3-x86_64-apple-darwin.tar.gz"
      sha256 "b3bd7ecfcdd4dbc2aa73c5c6250ca8c8fead343bfdba848570a302194ffedfdb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.6.3/assay-v6.6.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9f4fa0b9c4f91b07f394ac78448c10b9d9e672da3c9277214d8bbfe27e4d36dc"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.6.3/assay-v6.6.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c4f8c5579a96ae8f732e751c760e9bde496b8b656f4ad5f4a065f9bfd7f9faa0"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
