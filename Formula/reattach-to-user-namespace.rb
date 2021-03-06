class ReattachToUserNamespace < Formula
  desc "Reattach process (e.g., tmux) to background"
  homepage "https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard"
  url "https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard/archive/v2.9.tar.gz"
  sha256 "e4df00ead6b267a027a4ea35032bcfa114d91e709b1986ec0cbaee6825cec436"
  license "BSD-2-Clause"
  head "https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard.git"

  bottle do
    cellar :any_skip_relocation
    sha256 "8ab11a5fa7512f5d7ef8fe62a5275325f3721e13fde2b0831d1f615e8820c341" => :catalina
    sha256 "b277145d5bfbc6997bc7d8ebe203e9d93adf8d1aa2f0f1c76152212ee6a23403" => :mojave
    sha256 "68e1f00743690086fb23ce013767e0a669ef46807ee9f618fe9ea4a25c50d5c0" => :high_sierra
  end

  def install
    system "make"
    bin.install "reattach-to-user-namespace"
  end

  test do
    system bin/"reattach-to-user-namespace", "-l", "bash", "-c", "echo Hello World!"
  end
end
