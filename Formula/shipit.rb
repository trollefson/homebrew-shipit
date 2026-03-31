class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v1.1.0/shipit-aarch64-apple-darwin"
      sha256 "225bf5e2944124b82bb3a5b96d6c1ea365fd20532b511b2c73fd61347a9ac62b"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.1.0/shipit-x86_64-apple-darwin"
      sha256 "e8f399144219aeb66612d7f09c06e511ea02b38bc9118b8129de5f7b9d4dc3b3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.1.0/shipit-x86_64-unknown-linux-gnu"
      sha256 "a949a035dcf9705ba6433d715dd042dc426e492cfa9b51a09a5f28f10feb41fe"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
