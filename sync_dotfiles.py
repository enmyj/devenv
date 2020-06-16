"""
"""
import platform
from pathlib import Path
import shutil

import yaml
import click

# globals
OS = platform.system()
HERE = Path(__file__).resolve().parent
with open("dotfiles.yaml") as fl:
    DFLS = yaml.safe_load(fl)


def git_to_computer(repo_file: Path, target_file: Path) -> None:
    """
    """
    if repo_file.is_file():
        ans = input(f"file {repo_file} exists, overwrite (y/n)? ")
        if ans not in ("y", "n"):
            raise ValueError('plz specify "y" or "n"')
        elif ans == "n":
            print(f"skipping {repo_file}")
            return

    shutil.copy(repo_file, target_file)


def computer_to_git(repo_file: Path, target_file: Path) -> None:
    """
    """
    shutil.copy(target_file, repo_file)


@click.command()
@click.argument(
    "direction",
    type=click.Choice(["from_git", "to_git"], case_sensitive=False)
)
def sync(direction):
    """
    """
    for _, v in DFLS.items():
        if OS in v["platforms"]:
            repo_path = HERE.joinpath(Path(v["repo"]).expanduser())
            target_path = Path(v["target"]).expanduser()

            if direction == "from_git":
                git_to_computer(repo_path, target_path)
            elif direction == "to_git":
                computer_to_git(repo_path, target_path)


if __name__ == "__main__":
    sync()
