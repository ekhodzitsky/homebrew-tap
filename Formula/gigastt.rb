class Gigastt < Formula
  desc "Local speech-to-text server powered by GigaAM v3 — on-device Russian speech recognition"
  homepage "https://github.com/ekhodzitsky/gigastt"
  url "https://github.com/ekhodzitsky/gigastt/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "gigastt", shell_output("#{bin}/gigastt --version")
  end
end
