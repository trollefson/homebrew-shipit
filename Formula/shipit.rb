class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "1.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v1.4.1/shipit-aarch64-apple-darwin"
      sha256 "f15b2d6fe4dc3db4fc6de93f6a3dbb256464db0749ca5aea13fdb80c4500d52d"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.4.1/shipit-x86_64-apple-darwin"
      sha256 "48297823bcc113deb82f267b00e2b428df90cb6b01f58ff297887cece9810f90"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.4.1/shipit-x86_64-unknown-linux-gnu"
      sha256 "389f7b160d5f25695a6534704f1c0091bed960ae2de374e01476cf494144b2c3"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
