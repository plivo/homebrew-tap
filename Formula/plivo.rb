class Plivo < Formula
  desc "Command-line interface for the Plivo API"
  homepage "https://github.com/plivo/plivo-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.1.0/plivo_darwin_arm64"
      sha256 "b611ddb0d4a2c05cd94aac01b9bd003531a3212df4886e389ddf47f2e24cacc7"
    end
    on_intel do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.1.0/plivo_darwin_amd64"
      sha256 "bc76e72bd794aaa268f0b988dd8ed290618e801d2947b1e967ecc29be195e234"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.1.0/plivo_linux_arm64"
      sha256 "3ca357a2093615890661aa4740680c4732c26e43e547e1ee52b21242bb72a3fb"
    end
    on_intel do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.1.0/plivo_linux_amd64"
      sha256 "707c4b792c6b20b175058f3725cea3c5fc58db5dad1b52f95ff97537d55f90c8"
    end
  end

  def install
    bin.install Dir["plivo_*"].first => "plivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plivo --version")
  end
end
