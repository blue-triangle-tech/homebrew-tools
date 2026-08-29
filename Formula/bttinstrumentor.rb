class Bttinstrumentor < Formula
  desc "BlueTriangle SwiftUI automatic screen tracking instrumentor"
  homepage "https://help.bluetriangle.com/hc/en-us/articles/52918697353875-iOS-SwiftUI-SDK-Instrumentation-Automated-Screen-Tracking"
  version "1.0.2"

  url "https://github.com/blue-triangle-tech/BTTInstrumentor/releases/download/1.0.2/BTTInstrumentor"
  sha256 "dc9aa7c198168a5e413416a9b535d6d080ca8d64db1f62ad6bdd84a627eaf8ac"

  def install
    bin.install "BTTInstrumentor"
    system "sh", "-c", "xattr -d com.apple.quarantine #{bin}/BTTInstrumentor 2>/dev/null || true"
  end

  test do
    system "#{bin}/BTTInstrumentor", "help"
  end
end
