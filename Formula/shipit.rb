class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "2.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v2.1.3/shipit-aarch64-apple-darwin"
      sha256 "dbcd56f8c1f22a109b7b9156bd5c185ad565711e976bfbc37e84fcb898f74bc6"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v2.1.3/shipit-x86_64-apple-darwin"
      sha256 "788137b68ed4b019dddf65f2619ca2829046f9414fbf309cc0d509e97f330066"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v2.1.3/shipit-x86_64-unknown-linux-gnu"
      sha256 "e719aafc822d70b4d5d3375f8d893ce9331bb9f7e42ddf0443c2dc173387532c"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
