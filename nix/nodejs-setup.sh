# Make all the build tools available to execute by adding it's binaries to the PATH variable.
unset PATH
for p in $baseInputs $buildInputs; do
  export PATH="$p/bin${PATH:+:}$PATH"
done

# The home dir doesn't exits by default in Nix, but some programs need it to work properly.
export HOME="$PWD/home"

function genericBuild() {
  # # Create a directory for produced artifacts.
  rm -rf $out
  mkdir $out

  # Navigate to src directory.
  cd $src

  echo ok > $out/build-ok.out

  fixupPhase
}

function fixupPhase() {
  # Remove non-runtime dependencies.
  find $out -type f -exec patchelf --shrink-rpath '{}' \; -exec strip '{}' \; 2>/dev/null
}
