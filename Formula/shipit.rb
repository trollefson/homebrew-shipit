class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v0.5.0/shipit-aarch64-apple-darwin"
      sha256 "f650cdb3a69fec7d44db57ae30f5b637a903d2ef7995fa047880c568a514abb2"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v0.5.0/shipit-x86_64-apple-darwin"
      sha256 "945f0b4e55b74c8238e28962a0ca81a6a59caaa7245166c5cb8ef882262a9aff"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v0.5.0/shipit-x86_64-unknown-linux-gnu"
      sha256 "62a789b400ae325aaccb76016ba11424e964148e2007ed894dda3a48a4c28f97"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
