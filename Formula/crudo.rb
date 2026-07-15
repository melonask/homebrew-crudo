class Crudo < Formula
  desc "Configuration-driven JSON APIs backed by SQL"
  homepage "https://github.com/melonask/crudo"
  url "https://github.com/melonask/crudo/archive/05e9648ed9555d0116228da63aabd0f98a1e0950.tar.gz"
  version "0.1.0"
  sha256 "982f8899c4fef7c99158fb7c922eacdc5673ddba986610166a36d06f0891fa66"
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
