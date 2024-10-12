{ vars, ... }: {
  programs.git = {
    enable = true;
    userName = vars.username;
    userEmail = "hello@nirlep.dev";
  };
}
