class Crudo < Formula
  desc "Configuration-driven JSON APIs backed by SQL"
  homepage "https://github.com/melonask/crudo"
  url "https://github.com/melonask/crudo/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "18fa1c25c28bbbc1839266f2085bf13c910d3e6eeb85e978d5216661f0d456d6"
  license "MIT"
  head "https://github.com/melonask/crudo.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "crudo 0.4.1", shell_output("#{bin}/crudo --version")
  end
end
