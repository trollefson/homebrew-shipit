class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v1.0.0/shipit-aarch64-apple-darwin"
      sha256 "769c875c7da14369c161ffa31bdcc1536bea6edaca20ade40a2afcda197fc353"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.0.0/shipit-x86_64-apple-darwin"
      sha256 "5665714310bc0da2126631090e90a686595e884ee2da1c5ac8893683c5f3f7a7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.0.0/shipit-x86_64-unknown-linux-gnu"
      sha256 "b73059501ef2d5603afaf2d993e509308cbe84005ec17899be0a9bf00c3bc966"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
