class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v0.1.5/shipit-aarch64-apple-darwin"
      sha256 "2ef04486589f32ed0940d2d2fec65e7aafb6cf4e3bc496fc508c9adeee3be2e7"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v0.1.5/shipit-x86_64-apple-darwin"
      sha256 "7d8b3f44964466db87d187eeb14378d849dc2d97513aed762bf195a77a4bfcdd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v0.1.5/shipit-x86_64-unknown-linux-gnu"
      sha256 "972e679d5be059a49aeafa6aca98a3bd6e6188d4875a0925b7103bda3dd9e534"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
