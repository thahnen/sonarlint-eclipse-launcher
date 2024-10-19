cask "IDz1700" do
    idz_v = "17.0.0"
    version "aqua3.4-20241018GA"
    sha256 "80b26a26a8fb82979c8748a0eaca9e53dec542f986ea911cb74823eb2f9ce29c"
  
    url "https://public.dhe.ibm.com/ibmdl/export/pub/software/htp/zos/tools/#{version}/direct/IDz-aqua-#{idz_v}-macosx-x86_64.zip"
    name "IBM Developer for z/OS 17.0.0"
    desc "Comprehensive, robust toolset for developing z/OS applications (Java 17)"
    homepage "https://www.ibm.com/products/developer-for-zos"
  
    app "IBM Developer for zOS.app", target: "IBM IDz #{idz_v}.app"
  end
  