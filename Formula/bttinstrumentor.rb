class Bttinstrumentor < Formula
  desc "BlueTriangle SwiftUI automatic screen tracking instrumentor"
  homepage "https://www.bluetriangle.com"
  version "1.0.0"

  url "https://github.com/ashok1404/BTTInstrumentor/BTTInstrumentor/releases/download/1.0.0/BTTInstrumentor"
  sha256 "3ae9b0c19a60100880f826ce846b0da67bf49bb10dae371b178e33eec437c5c9"

  def install
    bin.install "BTTInstrumentor"
  end

  test do
    system "#{bin}/BTTInstrumentor", "help"
  end
end
