class Plivo < Formula
  desc "Command-line interface for the Plivo API"
  homepage "https://github.com/plivo/plivo-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.2.1/plivo_darwin_arm64"
      sha256 "b6f94d31b960bf6107e3f35df12b9548698d6436e1d3ca6ca8f11bac921eb37d"
    end
    on_intel do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.2.1/plivo_darwin_amd64"
      sha256 "899eea0c76da138e64a7239a63764ec905adf71b2825929e4f6492d4292c0aed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.2.1/plivo_linux_arm64"
      sha256 "f808d83d6c55aa34ac82636e94fe4aa6c0fffe64b8109bab906a957f9af98ddf"
    end
    on_intel do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.2.1/plivo_linux_amd64"
      sha256 "2a4590ef40e5d8edad68a377c97b112146ae0c7f9e03e0f972aaf143a192220b"
    end
  end

  def install
    bin.install Dir["plivo_*"].first => "plivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plivo --version")
  end
end
