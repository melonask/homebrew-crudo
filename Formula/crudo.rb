class Crudo < Formula
  desc "Configuration-driven JSON APIs backed by SQL"
  homepage "https://github.com/melonask/crudo"
  url "https://github.com/melonask/crudo/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "e403d4643271d4a48369f0f002c7627a6e0faaa578259d6b3cbb739a14994035"
  license "MIT"
  head "https://github.com/melonask/crudo.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "crudo 0.2.1", shell_output("#{bin}/crudo --version")
  end
end
