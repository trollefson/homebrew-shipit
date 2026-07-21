class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "2.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v2.1.6/shipit-aarch64-apple-darwin"
      sha256 "fbdac4974c6b3883ef297aac0536e3139c6c2194a20502f0657439d70d25490c"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v2.1.6/shipit-x86_64-apple-darwin"
      sha256 "21eeaebca64da0a8320a27bacc2a0129fb9a925edb8b4feddc6ac180d74e3291"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v2.1.6/shipit-x86_64-unknown-linux-gnu"
      sha256 "38d730658c9a91dcbc12bbe9c11b28cadc0282e0bad69403c3c36776fff93872"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
