class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "1.4.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v1.4.6/shipit-aarch64-apple-darwin"
      sha256 "82f49be00bf0f9a4d80a13192036e7d66bf13fdad23adf380287f23ee6d31872"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.4.6/shipit-x86_64-apple-darwin"
      sha256 "1d2f4ab5556181b680f497e5c079e435b2f2326827dad97fbbfc00e03063dede"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.4.6/shipit-x86_64-unknown-linux-gnu"
      sha256 "54faa755ebc4a101bbcb1e8a0b1ae928685f0d573635c77ab241db7fe56f7832"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
