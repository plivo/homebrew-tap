class Plivo < Formula
  desc "Command-line interface for the Plivo API"
  homepage "https://github.com/plivo/plivo-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.0.0/plivo_darwin_arm64"
      sha256 "74f1d55ecfbe09f06d29e10313a817954280b9efbd5aea4959ce3a85876062b3"
    end
    on_intel do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.0.0/plivo_darwin_amd64"
      sha256 "11bb8e202ba1e07bb2125fc82fd8d79128a6e2af967383ec527a234cab2abf32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.0.0/plivo_linux_arm64"
      sha256 "38b9fdcce2381af60500c3ff2a20f91fd61205df7369de6995fe82ae0d4ab801"
    end
    on_intel do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.0.0/plivo_linux_amd64"
      sha256 "4c80fb783897f582bb5d5a8e3ee9253be0b07af93fde9a67f04c51feb85fbdd2"
    end
  end

  def install
    bin.install Dir["plivo_*"].first => "plivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plivo --version")
  end
end
