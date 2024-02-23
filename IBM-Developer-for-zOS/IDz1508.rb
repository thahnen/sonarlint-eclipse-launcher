cask "IDz1508" do
  idz_v = "15.0.8"
  version "aqua3.2-20231117GA"
  sha256 "615829ebf983d5301531e74546005bd9cc3225b8c097812f1db55a85af211b29"

  url "https://public.dhe.ibm.com/ibmdl/export/pub/software/htp/zos/tools/#{version}/direct/IDz-aqua-#{idz_v}-macosx-x86_64.zip"
  name "IBM Developer for z/OS 15.0.8"
  desc "Comprehensive, robust toolset for developing z/OS applications (Java 8)"
  homepage "https://www.ibm.com/products/developer-for-zos"

  app "IBM Developer for zOS.app", target: "IBM IDz #{idz_v}.app"
end
