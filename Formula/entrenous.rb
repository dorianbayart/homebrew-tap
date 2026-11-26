class Entrenous < Formula
  desc "Shared clipboard, end-to-end encrypted, between your devices"
  homepage "https://entrenous.0xdba.dev"
  url "https://github.com/dorianbayart/entre-nous/releases/download/v0.1.61/entrenous-cli.tgz"
  sha256 "03086569f3d6dcad369f8a770bcd8a0a8eac256e57f70874c95b6460bd818449"
  license "AGPL-3.0-or-later"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/entrenous --version")
  end
end
