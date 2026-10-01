class Plivo < Formula
  desc "Command-line interface for the Plivo API"
  homepage "https://github.com/plivo/plivo-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.1.3/plivo_darwin_arm64"
      sha256 "27287295ec045dd57d90e6e229092b33fd1e8cc19a43a4a411284b8481502215"
    end
    on_intel do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.1.3/plivo_darwin_amd64"
      sha256 "420d7767621009a9588e77e15c4a648fec5c36c2aca983fb043d783578a84f87"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.1.3/plivo_linux_arm64"
      sha256 "4fbb07a3211139e10e155f167d02f1fec683090ea0068ec2d71d9f940f038f14"
    end
    on_intel do
      url "https://github.com/plivo/plivo-cli/releases/download/v1.1.3/plivo_linux_amd64"
      sha256 "5060d916b6763cec908c4a6304249c1e8090f64e7f60fdb706bff1489b30804e"
    end
  end

  def install
    bin.install Dir["plivo_*"].first => "plivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plivo --version")
  end
end
