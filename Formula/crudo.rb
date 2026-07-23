class Crudo < Formula
  desc "Configuration-driven JSON APIs backed by SQL"
  homepage "https://github.com/melonask/crudo"
  url "https://github.com/melonask/crudo/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "d0ec5ca21ea3c1e87b1e3adb09c74e8daa018817fae3f3667a7a3ee53132be69"
  license "MIT"
  head "https://github.com/melonask/crudo.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "crudo 0.3.0", shell_output("#{bin}/crudo --version")
  end
end
