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
      url "https://github.com/Rul1an/assay/releases/download/v6.7.0/assay-v6.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "3e59f25a43b798e05d8e474110a47a819178c53586663a31f45fedbb3ae72aef"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.7.0/assay-v6.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "43603c14fcd939a311f7485f053ef45275d408e2248878abf9e690eb619f1648"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.7.0/assay-v6.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7ca88512e37ed79b939ee6c1cff9e8fd26f418fa224fd2f3b7224f7d0a097f1b"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.7.0/assay-v6.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e9f4fd43ee33468e839e6de3b884a12c7988ce4105edb46f65e13c506d4f4e95"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
