class Plivo < Formula
  desc "Command-line interface for the Plivo API"
  homepage "https://github.com/plivo/plivo-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.4.1/plivo_darwin_arm64"
      sha256 "95e2aa6ae62693545352f3af64beaa4907677ebe337a625e2de3157898d36198"
    end
    on_intel do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.4.1/plivo_darwin_amd64"
      sha256 "927a86bd90244c5e335389d9b1a7e4efb4dd339670e8e2e88be2d723d1d09988"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.4.1/plivo_linux_arm64"
      sha256 "117c869fd940c9d031d561ac7ca6d238236966f10dcb1fa250a4f7cd799b337e"
    end
    on_intel do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.4.1/plivo_linux_amd64"
      sha256 "2e48c264c03d6dd653b70cb3b0ae1bb63108f5ee064106cbb30bbcbd57f68241"
    end
  end

  def install
    bin.install Dir["plivo_*"].first => "plivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plivo --version")
  end
end
