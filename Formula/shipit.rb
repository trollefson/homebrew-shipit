class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v0.4.0/shipit-aarch64-apple-darwin"
      sha256 "26130af279aeca03a58bd61237381f98f21c92c6a407ff25e9ec3093fb6000cb"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v0.4.0/shipit-x86_64-apple-darwin"
      sha256 "8f50b8958e758b758ad08fe7f74ca37c9f2553911cc2dc445b16ca582e31b857"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v0.4.0/shipit-x86_64-unknown-linux-gnu"
      sha256 "a4e70842c8aea3ae6fa8855a3f4046911b75ce2e0ebdcf67b99bf052c84ede08"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
