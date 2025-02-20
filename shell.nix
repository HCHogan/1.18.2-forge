{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  name = "minecraft-server-1.18.2";

  buildInputs = [
    pkgs.openjdk17
  ];

  shellHook = ''
    export JAVA_HOME=${pkgs.openjdk}/lib/openjdk
    export PATH=$JAVA_HOME/bin:$PATH

    echo "Starting Minecraft server..."

    # java @user_jvm_args.txt @libraries/net/minecraftforge/forge/1.18.2-40.2.21/unix_args.txt "$@"
  '';
}
