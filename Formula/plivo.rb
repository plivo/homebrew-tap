class Plivo < Formula
  desc "Command-line interface for the Plivo API"
  homepage "https://github.com/plivo/plivo-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.3.0/plivo_darwin_arm64"
      sha256 "d49fe0035313ee02c46a994968afed01c546360bf45e32ed12a2ebf88ed2a573"
    end
    on_intel do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.3.0/plivo_darwin_amd64"
      sha256 "2cca717ddce5f5133e30830e00ede0fc0fc55f9214e4b3b6c03de596efb52303"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.3.0/plivo_linux_arm64"
      sha256 "b03aff29aca1152d14ad18ff5df61855c584a0769c75e71a6e7e7556a5764212"
    end
    on_intel do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.3.0/plivo_linux_amd64"
      sha256 "f2db692aad0091053ea338ceb13349b8458416a39345b6d31cf4d60908ff7a3e"
    end
  end

  def install
    bin.install Dir["plivo_*"].first => "plivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plivo --version")
  end
end
