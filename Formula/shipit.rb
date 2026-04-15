class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "2.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v2.1.1/shipit-aarch64-apple-darwin"
      sha256 "478d9565fb44c16c771082f22fab02f72ef74e80e81ff47401981473ba1dcf38"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v2.1.1/shipit-x86_64-apple-darwin"
      sha256 "387cd6109aa0ec6729f7d42caefe0423142cea723bec6bce7447d1c3a5576994"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v2.1.1/shipit-x86_64-unknown-linux-gnu"
      sha256 "73daf66305ea50615af62bbc76e1cdc0de05a85348af633d38d82283de34ed10"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
