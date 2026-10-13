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
      url "https://github.com/Rul1an/assay/releases/download/v6.11.0/assay-v6.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "164bac809b41ada59050858cccea34e94c77fea15a8183a787fca45aac611017"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.11.0/assay-v6.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "aced82235dc5e2eb27f0b003d804935e83fb6c72d519481095fa9da588df826a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rul1an/assay/releases/download/v6.11.0/assay-v6.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d0217775da5b22352aa84bd6526b20e8972f4f93e135dbee755b8fc9c77301c7"
    end
    on_intel do
      url "https://github.com/Rul1an/assay/releases/download/v6.11.0/assay-v6.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d828d5b5be5c19b26519c0c2735857bcc9964af0600d19fede31990cae10bddc"
    end
  end

  def install
    bin.install "assay"
  end

  test do
    assert_match "assay #{version}", shell_output("#{bin}/assay --version")
  end
end
