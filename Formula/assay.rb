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
      url "https://github.com/Rul1an/assay/releases/download/v6.13.0/assay-v6.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "50ba7dda0836d4cb24927d34f9c1d5b3bf80e6d979085c07bd1472e99d09840d"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.13.0/assay-v6.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "a97341eb89f5920bfb709932f414b56db8a9c997b590a7aa6b4889a659a76305"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.13.0/assay-v6.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "73182813839fcc3a630940851f7623667f4518d5e7f9b8eee3e9103160f883e9"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.13.0/assay-v6.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bc9eeb35571488889eec4e3b16d34739f25717dfe1ca40cd51732780ee0042b3"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
