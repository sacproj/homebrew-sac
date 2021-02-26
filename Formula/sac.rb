class Sac < Formula
  desc "Slides as Code"
  homepage "https://github.com/sacproj"

  url "https://github.com/sacproj/sac-cli/releases/download/2.0.2/sac-cli.tar.gz"
  version "2.0.2"
  sha256 "8804bab6fefb7ee362344ed2a577158798eee2921b8f723e9bdd8d21034cfacb"
  license "MIT"

  def install
    bin.install "sac"
    libexec.install "pdf.js"
  end
end
