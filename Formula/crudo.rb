class Crudo < Formula
  desc "Configuration-driven JSON APIs backed by SQL"
  homepage "https://github.com/melonask/crudo"
  url "https://github.com/melonask/crudo/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "df0c5342fdcadb416f6529410f852717aa9a1270c3bffd08cccae6385530721d"
  license "MIT"
  head "https://github.com/melonask/crudo.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "crudo 0.1.0", shell_output("#{bin}/crudo --version")
  end
end
