class Plivo < Formula
  desc "Command-line interface for the Plivo API"
  homepage "https://github.com/plivo/plivo-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.0.1/plivo_darwin_arm64"
      sha256 "89f35585159f2229e184057e0447e4db64eb21d60ff2dee603b964ed8fbc11f1"
    end
    on_intel do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.0.1/plivo_darwin_amd64"
      sha256 "b8cc56f3a35395d3feb0ead7f457fad1483565eb79c7f402e86d9512d1d3f7c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.0.1/plivo_linux_arm64"
      sha256 "e9fe361978ae38f66dd84a0502261e102a2f08015f1a0c57221d6176e03e3482"
    end
    on_intel do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.0.1/plivo_linux_amd64"
      sha256 "7a317a0329d45ee1a7b047867208cced6b98521aa1d3d09f8c0ad0efb846b5a1"
    end
  end

  def install
    bin.install Dir["plivo_*"].first => "plivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plivo --version")
  end
end
