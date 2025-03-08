class Makedir < Formula
  desc "A better mkdir command: Create directories with predefined setups"
  homepage "https://github.com/soup-ms/makedir"
  url "https://github.com/soup-ms/makedir/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "4d1ec37bd6e205bf280c826a71d7ee409c41e8a53ed41b28bb3de72ce2aa847f"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/makedir", "--help"
  end
end
