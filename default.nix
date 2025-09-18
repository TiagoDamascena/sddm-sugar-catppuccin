{
  lib,
  stdenv,
  fetchFromGitHub,
  libsForQt5,
}:

stdenv.mkDerivation rec {
  pname = "sddm-sugar-catppuccin";
  version = "1.0.0";

  src = ./.;

  propagatedUserEnvPkgs = [
    libsForQt5.qt5.qtgraphicaleffects
    libsForQt5.qt5.qtquickcontrols2
    libsForQt5.qt5.qtsvg
  ];

  dontBuild = true;
  installPhase = ''
    mkdir -p $out/share/sddm/themes/sugar-catppuccin
    cp -r * $out/share/sddm/themes/sugar-catppuccin/
  '';

  meta = with lib; {
    description = "Catppuccin SDDM theme";
    homepage = "https://github.com/TiagoDamascena/sddm-sugar-catppuccin";
    license = licenses.gpl3Only;
    platforms = platforms.all;
  };
}
