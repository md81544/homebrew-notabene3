cask "notabene3" do
  version "3.001"

  on_arm do
    url "https://notabene3.com/downloads/notabene3-#{version}-macos-arm64.dmg"
    sha256 "af8f29088fc7a28ffd715a404e10cc0292d9943aa0346fb3d92b8302856b0dc3"
  end
  on_intel do
    url "https://notabene3.com/downloads/notabene3-#{version}-macos-x86_64.dmg"
    sha256 "f8d7197429082312ae313d289132caca4dd45d6442628f25372be58f577b64cf"
  end

  name "Notabene3"
  desc "Learn to read music by playing"
  homepage "https://notabene3.com/"

  livecheck do
    url "https://notabene3.com/version.php"
    regex(/^(\d+\.\d+)$/)
  end

  depends_on macos: ">= :ventura"

  app "Notabene3.app"

  zap trash: [
    "~/.config/com.notabene3",
    "~/Library/Application Support/com.notabene3",
    "~/Library/Preferences/com.notabene3.notabene3.plist",
  ]
end

