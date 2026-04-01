class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "1.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v1.2.1/shipit-aarch64-apple-darwin"
      sha256 "90bddd4ce1641e13861daf9131b3af4690d71fc42483e60395771b004fea9286"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.2.1/shipit-x86_64-apple-darwin"
      sha256 "55aa60a9ce8709c3765ecfce66e316eafc60549120b7daa44487494d58e0cd12"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.2.1/shipit-x86_64-unknown-linux-gnu"
      sha256 "0a24bf03d6f8ad0774d577b0de3d505d37c9a5ef6d6fd3e3155dcfed92238949"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
