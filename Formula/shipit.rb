class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "1.4.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v1.4.8/shipit-aarch64-apple-darwin"
      sha256 "9602aa3222999d1daa75ca712edd3ad9de3005322870e633cf8dc64367992a51"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.4.8/shipit-x86_64-apple-darwin"
      sha256 "528ea09d0a5fb479e918e73cc42b5c584146f40e8963b1660155b81faa75480f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.4.8/shipit-x86_64-unknown-linux-gnu"
      sha256 "1b898787ea01287ce98a313fd0756be17d5472f0d16edb2e0d62ffcfabd8739c"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
