cask "cliph" do
  version "1.0.0"
  sha256 "ea66464d6d2f67d7500023c03db3de28298aa6172e6019c00fb1dad130cec5aa"

  url "https://github.com/MaxSiominDev/MacOSClipboardHistory/releases/download/v#{version}/ClipboardHistory.zip",
      verified: "github.com/MaxSiominDev/MacOSClipboardHistory/"
  name "ClipboardHistory"
  desc "Clipboard history manager that lives in the menu bar"
  homepage "https://github.com/MaxSiominDev/MacOSClipboardHistory"

  depends_on macos: ">= :tahoe"

  app "ClipboardHistory.app"
  binary "#{appdir}/ClipboardHistory.app/Contents/Resources/cliph"

  uninstall quit:       "dev.maxsiomin.cliph",
            login_item: "ClipboardHistory"

  zap trash: [
    "~/Library/Application Support/ClipboardHistory",
    "~/Library/Preferences/dev.maxsiomin.cliph.plist",
    "~/Library/Caches/dev.maxsiomin.cliph",
  ]
end
