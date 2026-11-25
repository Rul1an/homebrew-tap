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
      url "https://github.com/Rul1an/assay/releases/download/v8.0.2/assay-v8.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "ca940d1e392f3013b2fe5213264b93c677c5b197880e5eec7fecd2ff8dbe1567"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v8.0.2/assay-v8.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "537ccc6b7a365addb862e28993b9ba6c4b54e3de0e40b839998166e9edeb97fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v8.0.2/assay-v8.0.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "edbeb01425d70662465b4a6193bb76fd9b7e8591ab59bd47a550683cfdbb6604"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v8.0.2/assay-v8.0.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f54959d5bac8967b08b4571308b996f63813d0e1d928068df8d14604bbeddcc0"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
