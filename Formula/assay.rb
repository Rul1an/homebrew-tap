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
      url "https://github.com/Rul1an/assay/releases/download/v8.0.0/assay-v8.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "13fdb8679de79d687f46e021a52f540ffbe537d68770a97077a854a89268a90b"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v8.0.0/assay-v8.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "c9e92a1d82208ed686d83ec7ba14475717feaf137bd6dcbf49aa748da57fc8de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v8.0.0/assay-v8.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d8bebaf0ec4331f011e157aaede562ff7a745f3d099942a16d10f5172926d0dc"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v8.0.0/assay-v8.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "efffe20798a22ff30768990b10c416bb77e86276f3e37b4a99907d8c34a8a0c3"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
