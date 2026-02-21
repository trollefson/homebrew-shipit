class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v0.1.5/shipit-aarch64-apple-darwin"
      sha256 "bd62c9441defcaefcf894ec119382da76dc4dfb7f5632eb349fb3169e1171b23"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v0.1.5/shipit-x86_64-apple-darwin"
      sha256 "4db240fe35f6593777814ee484020e2377ebecc5e949ce815fc209716a6f8e10"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v0.1.5/shipit-x86_64-unknown-linux-gnu"
      sha256 "14c455568b027490a59b7bf32e2a53993ea49d8113bfdb39432411b5b7e05e6c"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
