class BttinstrumentorAT100 < Formula
  desc "BlueTriangle SwiftUI automatic screen tracking instrumentor"
  homepage "https://help.bluetriangle.com/hc/en-us/articles/52918697353875-iOS-SwiftUI-SDK-Instrumentation-Automated-Screen-Tracking"
  version "1.0.0"

  url "https://github.com/blue-triangle-tech/BTTInstrumentor/releases/download/1.0.0/BTTInstrumentor"
  sha256 "8f7f62f7d625a3173d7ccd4965f99a7026ded5e56a08c3dc9e956de0510c589f"

  def install
    bin.install "BTTInstrumentor"
    system "sh", "-c", "xattr -d com.apple.quarantine #{bin}/BTTInstrumentor 2>/dev/null || true"
  end

  test do
    system "#{bin}/BTTInstrumentor", "help"
  end
end
