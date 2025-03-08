class Makedir < Formula
  desc "A better mkdir command: Create directories with predefined setups"
  homepage "https://github.com/soup-ms/makedir"
  url "https://github.com/soup-ms/makedir/releases/download/v0.2.1/makedir"
  sha256 "aab4fe1924f071c3cc13e6b6d26bf29157a7323240b88baa7259b4f9470c90c5"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/makedir", "--help"
  end
end
