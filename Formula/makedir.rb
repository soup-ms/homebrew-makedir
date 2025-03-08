class Makedir < Formula
  desc "A better mkdir command: Create directories with predefined setups"
  homepage "https://github.com/soup-ms/makedir"
  url "https://github.com/soup-ms/makedir/archive/refs/tags/makedir"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/makedir", "--help"
  end
end
