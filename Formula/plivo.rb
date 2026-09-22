class Plivo < Formula
  desc "Command-line interface for the Plivo API"
  homepage "https://github.com/plivo/plivo-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.1.2/plivo_darwin_arm64"
      sha256 "2eb7db394e6c7f71cfadd97312dd84dc8748b624a4b7234c1d0d25e18c435a18"
    end
    on_intel do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.1.2/plivo_darwin_amd64"
      sha256 "6e25fc6c878f68f0cbd55d6f1acc531054ce93c38f4afbfc09aaab3ce80491c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.1.2/plivo_linux_arm64"
      sha256 "497515cbfb96465e73ee37d93c43b2e683f18e82499504408d67f2cf5c17d229"
    end
    on_intel do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.1.2/plivo_linux_amd64"
      sha256 "a2827a4cc4b5f80504f65a8e33e0569601423633399db5fbf495397dc63c7c7c"
    end
  end

  def install
    bin.install Dir["plivo_*"].first => "plivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plivo --version")
  end
end
