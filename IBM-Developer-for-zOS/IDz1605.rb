cask "IDz1605" do
  idz_v = "16.0.5"
  version "aqua3.3-20240614GA"
  sha256 "a5d202643d53d663b2081059c9ac962baad41105bc28713952f7cffb46757ef7"

  url "https://public.dhe.ibm.com/ibmdl/export/pub/software/htp/zos/tools/#{version}/direct/IDz-aqua-#{idz_v}-macosx-x86_64.zip"
  name "IBM Developer for z/OS 16.0.5"
  desc "Comprehensive, robust toolset for developing z/OS applications (Java 11)"
  homepage "https://www.ibm.com/products/developer-for-zos"

  app "IBM Developer for zOS.app", target: "IBM IDz #{idz_v}.app"
end
