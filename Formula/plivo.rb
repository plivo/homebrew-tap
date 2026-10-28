class Plivo < Formula
  desc "Command-line interface for the Plivo API"
  homepage "https://github.com/plivo/plivo-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.3.2/plivo_darwin_arm64"
      sha256 "cc1a2e6c9a118a4282fb658b2d1c7c07ba25a1fee601e97e1a1f7f6bf8cf40df"
    end
    on_intel do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.3.2/plivo_darwin_amd64"
      sha256 "f0b35175c70f44d2831b7f16432978938581f86c5c2aec78246b21915bb359a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.3.2/plivo_linux_arm64"
      sha256 "0f6152238e37070867cf1b93ab20ecd088c72b404d86f9faba1d26017e1f692a"
    end
    on_intel do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.3.2/plivo_linux_amd64"
      sha256 "c7730642c4352af00c2a8f0037c3c7e15c4952c7a018fc3c775e7b1b76e8bd2c"
    end
  end

  def install
    bin.install Dir["plivo_*"].first => "plivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plivo --version")
  end
end
