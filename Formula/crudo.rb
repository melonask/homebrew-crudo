class Crudo < Formula
  desc "Configuration-driven JSON APIs backed by SQL"
  homepage "https://github.com/melonask/crudo"
  url "https://github.com/melonask/crudo/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "08b4444ee94c622db377ebf9ba943f816a125358b1e6315c88bcb49d6c362979"
  license "MIT"
  head "https://github.com/melonask/crudo.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "crudo 0.1.2", shell_output("#{bin}/crudo --version")
  end
end
