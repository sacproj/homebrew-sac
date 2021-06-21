class Sac < Formula
  desc "Slides as Code"
  homepage "https://github.com/sacproj"

  url "https://github.com/sacproj/sac-cli/releases/download/2.0.7/sac-cli.tar.gz"
  version "2.0.7"
  sha256 "977c8c9db887de8d01b6e8ff529ca74c218321f4c1b20af23273b7482d3031b6"
  license "MIT"

  def install
    bin.install "sac"
    libexec.install "pdf.js"
  end
end
