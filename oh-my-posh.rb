class OhMyPosh < Formula
  desc "Prompt theme engine for any shell"
  homepage "https://ohmyposh.dev"
  url "https://github.com/JanDeDobbeleer/oh-my-posh3/archive/v3.66.1.tar.gz"
  sha256 "3dbd2e2448f7b3fcaa89321d663f6ed5c8e99d503958f68468644f12dfc2bd0e"
  license "GPL-3.0-only"
  version "3.66.1"

  depends_on "go" => :build
  depends_on "go-bindata" => :build

  def install
    Dir.chdir("src") do
      system "go", "generate"
      system "go", "build", "-o", "oh-my-posh", "-ldflags", "\"-X 'main.Version=3.66.1'\""
      bin.install "oh-my-posh"
    end
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

