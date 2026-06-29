class Bttinstrumentor < Formula
  desc "BlueTriangle SwiftUI automatic screen tracking instrumentor"
  homepage "https://www.blue-triangle-tech.com"
  version "1.0.0"

  url "https://github.com/blue-triangle-tech/BTTInstrumentor/releases/download/1.0.0/BTTInstrumentor"
  sha256 "20183afecd39121994374a1d40294433793840d6e59c4c2d26d37ead5ba73db4"

  def install
    bin.install "BTTInstrumentor"
  end

  test do
    system "#{bin}/BTTInstrumentor", "help"
  end
end
