cask "IDz1603" do
  idz_v = "16.0.3"
  version "aqua3.3-20231215GA"
  sha256 "986a2dfe9c4cb278d387f029b588d6543083f7a5e5801bd39c615a8ce2265f6a"

  url "https://public.dhe.ibm.com/ibmdl/export/pub/software/htp/zos/tools/#{version}/direct/IDz-aqua-#{idz_v}-macosx-x86_64.zip"
  name "IBM Developer for z/OS 16.0.3"
  desc "Comprehensive, robust toolset for developing z/OS applications (Java 11)"
  homepage "https://www.ibm.com/products/developer-for-zos"

  app "IBM Developer for zOS.app", target: "IBM IDz #{idz_v}.app"
end
