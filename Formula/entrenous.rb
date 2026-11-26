class Entrenous < Formula
  desc "Shared clipboard, end-to-end encrypted, between your devices"
  homepage "https://entrenous.0xdba.dev"
  url "https://github.com/dorianbayart/entre-nous/releases/download/v0.1.59/entrenous-cli.tgz"
  sha256 "90e090dcf7a51ef942de08d08395e5df790c332bfe8eb9dd62f39714df6437eb"
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
