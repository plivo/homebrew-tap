class Plivo < Formula
  desc "Command-line interface for the Plivo API"
  homepage "https://github.com/plivo/plivo-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/plivo/plivo-cli/releases/download/v0.4.1/plivo_darwin_arm64"
      sha256 "fafad71ceaced9b1e11b63388daf4bad2b6ba16277672a88c1d6c749bf933b0f"
    end
    on_intel do
      url "https://github.com/plivo/plivo-cli/releases/download/v0.4.1/plivo_darwin_amd64"
      sha256 "c9246e03678c4dd51dba9fd06674bc0a7e95ff53804181f61f4e4a5fa701f53c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/plivo/plivo-cli/releases/download/v0.4.1/plivo_linux_arm64"
      sha256 "3fdd141b70423ba807aa0df67f93e63f8a2fc8cd55469c57c6683d20581bb619"
    end
    on_intel do
      url "https://github.com/plivo/plivo-cli/releases/download/v0.4.1/plivo_linux_amd64"
      sha256 "69cb361890bab19a24ee1c2a52d047ee21903e916241264eb8ade1fbf2fc22d2"
    end
  end

  def install
    bin.install Dir["plivo_*"].first => "plivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plivo --version")
  end
end
