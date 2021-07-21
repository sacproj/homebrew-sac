class Sac < Formula
  desc "Slides as Code"
  homepage "https://github.com/sacproj"

  url "https://github.com/sacproj/sac-cli/releases/download/2.1.0/sac-cli.tar.gz"
  version "2.1.0"
  sha256 "9e4de8d228e756d56aae08acd4ff5719e89fabf114ec1ac91a77ba698fe05f20"
  license "MIT"

  def install
    bin.install "sac"
    libexec.install "pdf.js"
  end
end
