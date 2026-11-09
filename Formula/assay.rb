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
      url "https://github.com/Rul1an/assay/releases/download/v6.24.0/assay-v6.24.0-aarch64-apple-darwin.tar.gz"
      sha256 "a18883576f465817000c134c97de03b0c996060195198b14b8cb622a5ff62bcb"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.24.0/assay-v6.24.0-x86_64-apple-darwin.tar.gz"
      sha256 "396c03f8642b32b7e421ff74c67df327c1f2caa8b7fa997e19b44f6570b79c4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.24.0/assay-v6.24.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "10e51b0954eae934242765817c8911805b8f0c104684e75b8e7c3d4330d2ab6c"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.24.0/assay-v6.24.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "025accf74e46f8dbc0193b8a54dfb24ff79e3088f82e87114f3633272dbc0b9c"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
