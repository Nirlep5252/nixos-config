{ ... }:

{
  programs.wofi.enable = true;
  programs.wofi.style = ''

    * {
        border-radius: 10px;
        border: none;
    }

    window {
        font-size: 32px;
        font-family: "GeistMono Nerd Font";
        background-color: rgba(50, 50, 80, 0.9);
        color: white;
        border-radius: 10px;
    }

    #entry {
        padding: 0.25em;
    }

    #entry:selected {
        background-color: #bbccdd;
        background: linear-gradient(90deg, #bbccdd, #cca5dd, #dd77ff);
    }

    #text:selected {
        color: #333333;
    }

    #input {
        background-color: rgba(50, 50, 80, 0.5);
        color: white;
        padding: 0.25em;
    }

  '';
}
