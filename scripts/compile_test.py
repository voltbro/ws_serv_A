import compileall

compileall.compile_file('service_configuration.py', force=True, ddir='~/catkin_ws/src/ws_service_pkg_1/run/')

# # Perform same compilation, excluding files in .svn directories.
# import re
# compileall.compile_dir('Lib/', rx=re.compile(r'[/\\][.]svn'), force=True)
#
# # pathlib.Path objects can also be used.
# import pathlib
# compileall.compile_dir(pathlib.Path('Lib/'), force=True)