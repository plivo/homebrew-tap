class Plivo < Formula
  desc "Command-line interface for the Plivo API"
  homepage "https://github.com/plivo/plivo-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.1.1/plivo_darwin_arm64"
      sha256 "e0ba14e13a14da62aae700d1fb51c9b140bb294044f78a39f434b67492dd3efb"
    end
    on_intel do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.1.1/plivo_darwin_amd64"
      sha256 "2750b5306e2e59a0eb63b9d473b7261add737abff980f0ab4ffc77b92659851a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.1.1/plivo_linux_arm64"
      sha256 "41da32104fb7902d50152f941a438f3269a586cfcecefe2e9e090726dc6ebd69"
    end
    on_intel do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.1.1/plivo_linux_amd64"
      sha256 "24519a7fb43cd65713ab0f5a8f2a2a1d7f3ecfb6f76f54c8d310503a2613a7c8"
    end
  end

  def install
    bin.install Dir["plivo_*"].first => "plivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plivo --version")
  end
end
