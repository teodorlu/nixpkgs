{ stdenv, fetchFromGitHub, boost, cmake, curl }:

stdenv.mkDerivation rec {
  name = "leatherman-${version}";
  version = "0.7.5";

  src = fetchFromGitHub {
    sha256 = "103qzhjhgw7jh0xcaxag735wfm6q35xprq5wmdimfhhmmrmjr51g";
    rev = version;
    repo = "leatherman";
    owner = "puppetlabs";
  };

  buildInputs = [ boost cmake curl ];

  meta = with stdenv.lib; {
    homepage = https://github.com/puppetlabs/leatherman/;  
    description = "A collection of C++ and CMake utility libraries";
    license = licenses.asl20;
    maintainers = [ maintainers.womfoo ];
    platforms = platforms.linux;
  };

}
