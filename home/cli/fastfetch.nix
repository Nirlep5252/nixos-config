{
  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        type = "kitty";
        source = "~/Pictures/icons/maid-peek-cropped.png";
        width = 15;
        height = 15;
        padding = {
          right = 0;
          left = 2;
        };
      };
      display = {
        separator = " ";
      };
      modules = [
        {
          key = "╭───────────╮";
          type = "custom";
        }
        {
          key = "│ {#31} user    {#keys}│";
          type = "title";
          format = "{user-name}";
        }
        {
          key = "│ {#32}󰇅 hname   {#keys}│";
          type = "title";
          format = "{host-name}";
        }
        {
          key = "│ {#33}󰅐 uptime  {#keys}│";
          type = "uptime";
        }
        {
          key = "│ {#34}{icon} distro  {#keys}│";
          type = "os";
        }
        {
          key = "│ {#35} kernel  {#keys}│";
          type = "kernel";
        }
        {
          key = "│ {#36}󰇄 desktop {#keys}│";
          type = "de";
        }
        {
          key = "│ {#31} term    {#keys}│";
          type = "terminal";
        }
        {
          key = "│ {#32} shell   {#keys}│";
          type = "shell";
        }
        {
          key = "│ {#33}󰍛 cpu     {#keys}│";
          type = "cpu";
          showPeCoreCount = true;
        }
        {
          key = "│ {#34}󰉉 disk    {#keys}│";
          type = "disk";
          folders = "/";
        }
        {
          key = "│ {#35} memory  {#keys}│";
          type = "memory";
        }
        {
          key = "│ {#36}󰩟 network {#keys}│";
          type = "localip";
          format = "{ipv4} ({ifname})";
        }
        {
          key = "├───────────┤";
          type = "custom";
        }
        {
          key = "│ {#39} colors  {#keys}│";
          type = "colors";
          symbol = "circle";
        }
        {
          key = "╰───────────╯";
          type = "custom";
        }
      ];
    };
  };
}
