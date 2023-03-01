#!/usr/bin/python

from json import loads
from os import system

def main():
    launchers = []
    buttons = "(box"
    with open("launcher-items.json") as file:
        launchers = loads(file.read())

    for launcher in launchers:
        buttons += f"""
  (eventbox
    :onclick "{launcher["launch-path"]}"
    (image
      :class "image"
      :path "{launcher["icon-path"]}"
    )
  )
"""

    buttons += ")"
    print(buttons)
    system("eww update lc-not-ready=false")


if __name__ == "__main__":
    main()
