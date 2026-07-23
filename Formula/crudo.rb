class Crudo < Formula
  desc "Configuration-driven JSON APIs backed by SQL"
  homepage "https://github.com/melonask/crudo"
  url "https://github.com/melonask/crudo/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "c8ad42440fbac9f25674fdbd26501930699adc1ee1f712d5f3974ae2f1c3d5e9"
  license "MIT"
  head "https://github.com/melonask/crudo.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "crudo 0.4.0", shell_output("#{bin}/crudo --version")
  end
end
