class Bttinstrumentor < Formula
  desc "BlueTriangle SwiftUI automatic screen tracking instrumentor"
  homepage "https://www.bluetriangle.com"
  version "1.0.0"

  url "https://github.com/blue-triangle-tech/BTTInstrumentor/BTTInstrumentor/releases/download/1.0.0/BTTInstrumentor"
  sha256 "8773ec669af8951877a97dae39cf9d21eee31f8962b4728b2895035f70d377a7"

  def install
    bin.install "BTTInstrumentor"
  end

  test do
    system "#{bin}/BTTInstrumentor", "help"
  end
end
