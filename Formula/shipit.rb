class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v1.0.2/shipit-aarch64-apple-darwin"
      sha256 "a789f6b5046e4d33b2b33c39f9e59f50e05da50dbc49dff4ae5c8b1bbfd3c097"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.0.2/shipit-x86_64-apple-darwin"
      sha256 "f09df3567cf40ae3781bf7210c6f4eae45eae1924ce6a16fcf1c54712e783b97"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.0.2/shipit-x86_64-unknown-linux-gnu"
      sha256 "496ae9f929737666aad00f11c07b0c2129d9ec3da2a87278e85e74348fc39f25"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
