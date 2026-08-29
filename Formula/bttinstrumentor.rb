class Bttinstrumentor < Formula
  desc "BlueTriangle SwiftUI automatic screen tracking instrumentor"
  homepage "https://help.bluetriangle.com/hc/en-us/articles/52918697353875-iOS-SwiftUI-SDK-Instrumentation-Automated-Screen-Tracking"
  version "1.0.2"

  url "https://github.com/blue-triangle-tech/BTTInstrumentor/releases/download/1.0.2/BTTInstrumentor"
  sha256 "c71fc9c5807c273655092c232180ae71f60872288cd8548fdc75c51d26189458"

  def install
    bin.install "BTTInstrumentor"
    system "sh", "-c", "xattr -d com.apple.quarantine #{bin}/BTTInstrumentor 2>/dev/null || true"
  end

  test do
    system "#{bin}/BTTInstrumentor", "help"
  end
end
