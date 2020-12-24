class OhMyPosh < Formula
  desc "Prompt theme engine for any shell"
  homepage "https://ohmyposh.dev"
  url "https://github.com/JanDeDobbeleer/oh-my-posh3/archive/v3.60.1.tar.gz"
  sha256 "ae2e73c27c2b8b17a852f8cf76c72d5793d7d95fc566c6bfe4c721a7dfc6d2b7"
  license "GPL-3.0-only"
  version "3.60.1"

  depends_on "go" => :build
  depends_on "go-bindata" => :build

  def install
    system "go-bindata", "-o", "init.go", "init/"
    system "go", "build", "-o", "oh-my-posh", "-ldflags=\"-X 'main.Version=3.60.1'\""
    bin.install "oh-my-posh"
    mv "themes", prefix
  end

  def caveats
    <<~EOS
      Thanks for installing Oh my Posh.
      Have a look at https://ohmyposh.dev/docs/installation for detailed instructions for your shell.
      Sample themes can be found at $(brew --prefix oh-my-posh)/themes.
    EOS
  end

  test do
    system "#{bin}/oh-my-posh", "--help"
  end
end

