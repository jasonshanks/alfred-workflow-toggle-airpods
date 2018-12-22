# encoding: utf-8

import sys
from workflow import Workflow, ICON_WEB, web
import subprocess

import argparse

def main(wf):
    parser = argparse.ArgumentParser()
    parser.add_argument('query', nargs='*', default=None)

    args = parser.parse_args(wf.args)

    if args.query:
        query = args.query
        input = query[-1]

        wf.add_item(
            title='Setting name "{name}" as Default'.format(name=input),
            arg=" ".join(query),
            valid=True,
        )

    else:
        scpt_output = subprocess.check_output("osascript bluetooth.scpt",   shell=True).decode('utf-8')
        devices = sorted(scpt_output.split(', '), key=lambda x: 'Pod' in x, reverse=True)
        for device in devices:
            wf.add_item(
                device,
                device,
                autocomplete=device
            )

    wf.send_feedback()

if __name__ == "__main__":
    wf = Workflow()
    sys.exit(wf.run(main))
