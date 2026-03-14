cask "macsweep" do
  version "1.0.0"
  sha256 "6ec6114988c515e637fab3e183a79f0a603d34c07e415baf3c1d5429e717098b"

  url "https://github.com/MbappeWU/MacSweep/releases/download/v#{version}/MacSweep.dmg"
  name "MacSweep"
  desc "Safety-first macOS storage cleaner with trash-first deletion"
  homepage "https://github.com/MbappeWU/MacSweep"

  depends_on macos: ">= :monterey"

  app "MacSweep.app"

  binary "#{appdir}/MacSweep.app/Contents/Resources/cli/bin/macsweep", target: "macsweep"

  zap trash: [
    "~/Library/Application Support/MacSweep",
    "~/Library/Caches/MacSweep",
    "~/Library/Logs/MacSweep",
    "~/Library/Preferences/com.arkenage.macsweep.plist",
  ]
end
