class Plivo < Formula
  desc "Command-line interface for the Plivo API"
  homepage "https://github.com/plivo/plivo-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.2.0/plivo_darwin_arm64"
      sha256 "f8d4197b0978ae455c158ba7fb240f3ac08d68b2ae3fb3de475b25fee02ee162"
    end
    on_intel do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.2.0/plivo_darwin_amd64"
      sha256 "aa37574b1502d2d6ac703e1e1eaee7bd19085d67919c1c2c402b6b538eeac2d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.2.0/plivo_linux_arm64"
      sha256 "fcba1bdbfbc057d56763f1eab622dde49c96e2dc73bf8280a917cb6d6388f457"
    end
    on_intel do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.2.0/plivo_linux_amd64"
      sha256 "66292771b832e525c3f8ab93a8dacad7be0008f9c307103bfdfe38b2e5d7e2b2"
    end
  end

  def install
    bin.install Dir["plivo_*"].first => "plivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plivo --version")
  end
end
