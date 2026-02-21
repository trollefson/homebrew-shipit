class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v0.2.0/shipit-aarch64-apple-darwin"
      sha256 "753e4a389320681d64182c69eb37dce7ba24b1be60a705e407e27e841538a899"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v0.2.0/shipit-x86_64-apple-darwin"
      sha256 "f6cd9ef9eafcbb443f91eb27025dac018a5a7f6564df6e201d3d391763cf7f48"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v0.2.0/shipit-x86_64-unknown-linux-gnu"
      sha256 "bafa042cb14444ef20ba97e0762816d2220aa953342d06ea299c99c21e488d21"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
