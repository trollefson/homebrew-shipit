class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v0.1.3/shipit-aarch64-apple-darwin"
      sha256 "e56cbce9a6c17805e3a208d021d802ea94f72aa5d89e62f7aac93cd2c104c0d1"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v0.1.3/shipit-x86_64-apple-darwin"
      sha256 "49919b3bbfb2a42df9b69cb9ab2613d41b0111d3634b44f042e68f2ce9415295"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v0.1.3/shipit-x86_64-unknown-linux-gnu"
      sha256 "e22a577b0164df8c3fe77b6c13af20e05012ff578950720a79ae534fcfc1e856"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
