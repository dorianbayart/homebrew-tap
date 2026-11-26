class Entrenous < Formula
  desc "Shared clipboard, end-to-end encrypted, between your devices"
  homepage "https://entrenous.0xdba.dev"
  url "https://github.com/dorianbayart/entre-nous/releases/download/v0.1.58/entrenous-cli.tgz"
  sha256 "535eec7a7af4bd27754e4cc2eccbfb1c1394ae1e09a597d75ffb912b74a04f3a"
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
