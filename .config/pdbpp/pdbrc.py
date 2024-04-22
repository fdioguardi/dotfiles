""" Configuration file for pdb++. """


import pdb


class Config(pdb.DefaultConfig):
    editor: str = "nvim"
    sticky_by_default: bool = True
    exec_if_unfocused: str = "play  $(ls ~/.local/share/sounds/* | sort -R | head -n1) 2> /dev/null &"

    def setup(self, pdb) -> None:
        # make 'l' an alias to 'longlist'
        Pdb = pdb.__class__
        Pdb.do_l = Pdb.do_longlist
