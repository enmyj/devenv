"""
"""
import platform
import pathlib
from pathlib import Path
import shutil
import yaml
import argparse

import click

OS = platform.system()
HERE = Path(__file__).resolve().parent
with open("dotfiles.yaml") as fl:
    DFLS = yaml.safe_load(fl)


def git_to_computer(repo_file: Path, target_file: Path) -> None:
    """
    """
    if repo_file.is_file():
        ans = input(f"file {repo_file} exists, overwrite (y/n)?")
        if ans not in ("y", "n"):
            raise ValueError('plz specify "y" or "n"')
        elif ans == "n":
            print(f"skipping {repo_file}")
            return

    shutil.copy(fl, target_file)


def computer_to_git(repo_file: Path, target_file: Path) -> None:
    """
    """
    shutil.copy(target_file, repo_file)


def sync(direction: str = "down"):
    """
    """
    for _, v in DFLS.items():
        if OS in v["platforms"]:
            repo_path = HERE.joinpath(Path(v["repo"]).expanduser())
            target_path = Path(v["target"]).expanduser()

            if direction == "down":
                git_to_computer(repo_path, target_path)
            elif direction == "up":
                computer_to_git(repo_path, target_path)
            else:
                raise ValueError()


if __name__ == "__main__":
    sync("up")

# @click.command()
# @click.argument(
#     'mode',
#     type=click.Choice(['from_git', 'to_git'], case_sensitive=False)
# )
# @click.option(
#     '--files', '-f', multiple=True,
#     type=click.Path(exists=True),
#     default = [os.path.expanduser('~/.config/starship.toml')]
# )
# def main(mode, files):
#     print(files)

# if __name__ == "__main__":
#     main()
