class Plivo < Formula
  desc "Command-line interface for the Plivo API"
  homepage "https://github.com/plivo/plivo-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.4.0/plivo_darwin_arm64"
      sha256 "a58d7966030deed78d743698697fd400ed51d90105f2e59e70193d761a4ebf67"
    end
    on_intel do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.4.0/plivo_darwin_amd64"
      sha256 "cbc2512365a07735f07aaab3d2d6eb2897ea5d29c4519b59ef748be3d2dec19a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.4.0/plivo_linux_arm64"
      sha256 "69986128ae84957581a7571fb59203448635e1f82c2e2b146d438b8cc9c6a795"
    end
    on_intel do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.4.0/plivo_linux_amd64"
      sha256 "131a963bb100442df3cb6ca5c4153578332b307020769a8a9ed4ad8a1420448c"
    end
  end

  def install
    bin.install Dir["plivo_*"].first => "plivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plivo --version")
  end
end
