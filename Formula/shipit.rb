class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v0.3.0/shipit-aarch64-apple-darwin"
      sha256 "89735d6ddf0aea67c9093314dae6a2b5030929c133021b0bc4e8fe0fd17b74c6"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v0.3.0/shipit-x86_64-apple-darwin"
      sha256 "5810bf24af191f8942f75e0da4cd80c12c2e72d468d29aa726c5040ce552aa1f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v0.3.0/shipit-x86_64-unknown-linux-gnu"
      sha256 "6a7a96491718b5758528ed13998e04ea08cfe8f1cd8de99eb0951840842ee35b"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
