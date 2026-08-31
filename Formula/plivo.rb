class Plivo < Formula
  desc "Command-line interface for the Plivo API"
  homepage "https://github.com/plivo/plivo-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/plivo/plivo-cli/releases/download/v0.4.0/plivo_darwin_arm64"
      sha256 "c60021f27dddca2bc9ce5b36bce92d9a87c8b57c7d51eca33e3e9d8eee55cb9d"
    end
    on_intel do
      url "https://github.com/plivo/plivo-cli/releases/download/v0.4.0/plivo_darwin_amd64"
      sha256 "8073a4dbd4dc41ed014ec17c14ce026ab16e94339039e83c1e1afab61ef1115b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/plivo/plivo-cli/releases/download/v0.4.0/plivo_linux_arm64"
      sha256 "e0f5a7b10fb940865ac4a4a221a6caef055ca0258f1c9bdf42e1f95b88870065"
    end
    on_intel do
      url "https://github.com/plivo/plivo-cli/releases/download/v0.4.0/plivo_linux_amd64"
      sha256 "74e85c21abf94d900a1dedf1427e175fa5c4b19c05b3f4c06d35edadf1e1232b"
    end
  end

  def install
    bin.install Dir["plivo_*"].first => "plivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plivo --version")
  end
end
