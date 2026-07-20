class Bttinstrumentor < Formula
  desc "BlueTriangle SwiftUI automatic screen tracking instrumentor"
  homepage "https://help.bluetriangle.com/hc/en-us/articles/52918697353875-iOS-SwiftUI-SDK-Instrumentation-Automated-Screen-Tracking"
  version "1.0.1"

  url "https://github.com/blue-triangle-tech/BTTInstrumentor/releases/download/1.0.1/BTTInstrumentor"
  sha256 "11f4f14a0c764f7be93705f0c439c2e3e087652fb1e5d38dd7a178fd68f4c69c"

  def install
    bin.install "BTTInstrumentor"
    system "xattr", "-d", "com.apple.quarantine", "#{bin}/BTTInstrumentor"
  end

  test do
    system "#{bin}/BTTInstrumentor", "help"
  end
end
