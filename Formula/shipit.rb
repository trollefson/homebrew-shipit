class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "1.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v1.4.3/shipit-aarch64-apple-darwin"
      sha256 "47a0a5e9735652c45890790e5676495c82f6d31d181f61d5cd3f695a1dd4d933"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.4.3/shipit-x86_64-apple-darwin"
      sha256 "da4885809136ace88d9a18fea7717e4cd87c80f292c0d6aed8d5a0471a732ecc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.4.3/shipit-x86_64-unknown-linux-gnu"
      sha256 "2532235b928ae1786277b149bf00dd509674618b037fc109e02cc93324900482"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
