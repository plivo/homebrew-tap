class Plivo < Formula
  desc "Command-line interface for the Plivo API"
  homepage "https://github.com/plivo/plivo-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.3.3/plivo_darwin_arm64"
      sha256 "e11fbc5c1f652ef568e9f836b0d109c72d863338a6147b7377973395b05eb07f"
    end
    on_intel do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.3.3/plivo_darwin_amd64"
      sha256 "c7d0a9c536177f9bfc6fd6f3ab77c4d75444449db1c1502051608a385732fff8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.3.3/plivo_linux_arm64"
      sha256 "66fce34b129397a81b7128a1c818ebee3efdb6c66a9f7260d400c9e42fa715f5"
    end
    on_intel do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.3.3/plivo_linux_amd64"
      sha256 "14288915349a3c779a6df5d7926410fda96721b781779cdb5254430f6688a517"
    end
  end

  def install
    bin.install Dir["plivo_*"].first => "plivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plivo --version")
  end
end
