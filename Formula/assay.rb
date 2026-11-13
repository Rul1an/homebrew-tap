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
      url "https://github.com/Rul1an/assay/releases/download/v6.26.0/assay-v6.26.0-aarch64-apple-darwin.tar.gz"
      sha256 "f3b1b7c432b9879c07c717210ca7222311eb0f193e22f1ad30fc82ad41692fb1"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.26.0/assay-v6.26.0-x86_64-apple-darwin.tar.gz"
      sha256 "51548952c073a7f333db559efe3157b8f9fdd880cdb53c9087c5c15056c4904c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.26.0/assay-v6.26.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3cbb058010e637428bd3cad7963813ecd06438f640a5b0801b90ece910be167f"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.26.0/assay-v6.26.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "59800e0e6a23b05f4e3aa82eeed2e87702ddfb7a1b4d4a5c34e3e15f19750510"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
