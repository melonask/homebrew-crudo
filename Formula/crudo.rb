class Crudo < Formula
  desc "Configuration-driven JSON APIs backed by SQL"
  homepage "https://github.com/melonask/crudo"
  url "https://github.com/melonask/crudo/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "e02cadf1ecda386a0831d792e18ab88045e74b8bb3eebbbd0c2ed4feaa548a16"
  license "MIT"
  head "https://github.com/melonask/crudo.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "crudo 0.1.1", shell_output("#{bin}/crudo --version")
  end
end
