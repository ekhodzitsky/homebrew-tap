class Gigastt < Formula
  desc "Local speech-to-text server powered by GigaAM v3 — on-device Russian speech recognition"
  homepage "https://github.com/ekhodzitsky/gigastt"
  url "https://github.com/ekhodzitsky/gigastt/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "47919c1738bc28d2b24888347fc54e4da1c9307092b29e80cade5c44f6961ce7"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "gigastt", shell_output("#{bin}/gigastt --version")
  end
end
