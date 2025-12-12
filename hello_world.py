"""Simple script to demonstrate environment details on AWS Linux nodes."""
from pathlib import Path
import platform


def read_os_release() -> str:
    """Return the contents of /etc/os-release if available."""
    os_release_path = Path("/etc/os-release")
    if os_release_path.exists():
        return os_release_path.read_text().strip()
    return "No /etc/os-release information available."


def main() -> None:
    """Print a greeting and basic node information."""
    print("Hello world")
    print(f"Hostname: {platform.node()}")
    print(f"Platform: {platform.platform()}")
    print("/etc/os-release contents:")
    print(read_os_release())


if __name__ == "__main__":
    main()
