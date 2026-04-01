class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "1.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v1.3.1/shipit-aarch64-apple-darwin"
      sha256 "205aaa74f2dffadb65241f2df3d4a49005e9d4b81f32ea8d94d7b40ef6527855"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.3.1/shipit-x86_64-apple-darwin"
      sha256 "7b368691ab774c123439dd0d619fd8daa6fb926ff45c2ca2494f4157072b2307"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.3.1/shipit-x86_64-unknown-linux-gnu"
      sha256 "d126739c56b257501bd24a99ab9a3240848bbc9144aa919d4dbc23bf8059a1f5"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
