#!/bin/sh

set -eu

qdbus org.kde.KWin /Scripting org.kde.kwin.Scripting.unloadScript kwin-rectangle || true

plasmapkg2 -t kwinscript -r kwin-rectangle || true
plasmapkg2 -t kwinscript -i .

qdbus org.kde.KWin /Scripting org.kde.kwin.Scripting.loadScript \
  ~/.local/share/kwin/scripts/kwin-rectangle kwin-rectangle
qdbus org.kde.KWin /KWin org.kde.KWin.reconfigure
qdbus org.kde.KWin /Scripting org.kde.kwin.Scripting.start

src="${PWD}/metadata.desktop"
for dst in \
  "/usr/share/kservices5/kwin-rectangle.desktop" \
  "${XDG_DATA_HOME}/kservices5/kwin-rectangle.desktop"; do

  if [ -h "${dst}" ]; then
    echo 2>&1 "${dst} was a symlink. Deleting."
    rm -f "${dst}"
  fi

  if [ -e "${dst}" ]; then
    #echo 2>&1 "${dst} already exists. Deleting."
    rm -f "${dst}"
  fi

  if cp -f "${src}" "${dst}" 2>/dev/null; then
    echo >&2 "Success: installed to ${dst}"
  else
    if sudo --non-interactive cp -f "${src}" "${dst}" 2>/dev/null; then
      echo >&2 "Success: installed with sudo to ${dst}"
    else
      echo >&2 "Failed: $USER and sudo failed to install to ${dst}"
    fi
  fi
done
