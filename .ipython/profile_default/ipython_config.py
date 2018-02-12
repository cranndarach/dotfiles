"""
IPython config file
Created with guidance from powerline.readthedocs.io
"""

from powerline.bindings.ipython.since_5 import PowerlinePrompts
c = get_config()
c.TerminalInteractiveShell.simple_prompt = False
c.TerminalInteractiveShell.prompts_class = PowerlinePrompts
