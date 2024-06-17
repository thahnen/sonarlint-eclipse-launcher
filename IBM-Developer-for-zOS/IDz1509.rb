cask "IDz1509" do
  idz_v = "15.0.9"
  version "aqua3.2-20240510GA"
  sha256 "93e105230774fa22e9a10ab47ed024ab29562d8c69d1a72db2e528d01500ab11"

  url "https://public.dhe.ibm.com/ibmdl/export/pub/software/htp/zos/tools/#{version}/direct/IDz-aqua-#{idz_v}-macosx-x86_64.zip"
  name "IBM Developer for z/OS 15.0.9"
  desc "Comprehensive, robust toolset for developing z/OS applications (Java 8)"
  homepage "https://www.ibm.com/products/developer-for-zos"

  app "IBM Developer for zOS.app", target: "IBM IDz #{idz_v}.app"
end
