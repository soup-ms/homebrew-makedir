class Makedir < Formula
  desc "A better mkdir command: Create directories with predefined setups"
  homepage "https://github.com/soup-ms/makedir"
  url "https://github.com/soup-ms/makedir/releases/tag/v0.2.1/makedir"
  sha256 "ca988e3da9162b15ff0afe964c4c85fa71931d4a10e8f979ec0e837fda930854"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/makedir", "--help"
  end
end
