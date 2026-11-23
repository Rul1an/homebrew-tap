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
      url "https://github.com/Rul1an/assay/releases/download/v7.0.4/assay-v7.0.4-aarch64-apple-darwin.tar.gz"
      sha256 "459ae0ad94a4af592b531129919f24d447568f0ecb4c1d319c9d4ecce1e47aa8"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v7.0.4/assay-v7.0.4-x86_64-apple-darwin.tar.gz"
      sha256 "53af624aa42e8ca65b44116fc0cc5688ffc6e94bbee0d2ee3a4adcbfc37a473e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v7.0.4/assay-v7.0.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "73238dc0247f4cdb8365ed1324a9f5bca510124f32ee8e0c787664c8d4836ae4"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v7.0.4/assay-v7.0.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "16224f7cb8061e714ddd474fa0a547dd8041aade2c68dff76a6536e64a26981a"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
