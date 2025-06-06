# Copyright (c) 2018-2025, NVIDIA CORPORATION.
#
# pygdf documentation build configuration file, created by
# sphinx-quickstart on Wed May  3 10:59:22 2017.
#
# This file is execfile()d with the current directory set to its
# containing dir.
#
# Note that not all possible configuration values are present in this
# autogenerated file.
#
# All configuration values have a default; values that are commented out
# serve to show the default.

# If extensions (or modules to document with autodoc) are in another directory,
# add these directories to sys.path here. If the directory is relative to the
# documentation root, use os.path.abspath to make it absolute, like shown here.
#
import os
import sys

from packaging.version import Version

import cugraph

# If extensions (or modules to document with autodoc) are in another
# directory, add these directories to sys.path here. If the directory
# is relative to the documentation root, use os.path.abspath to make it
# absolute, like shown here.
sys.path.insert(0, os.path.abspath('sphinxext'))

from github_link import make_linkcode_resolve # noqa

# -- General configuration ------------------------------------------------

# If your documentation needs a minimal Sphinx version, state it here.
#
# needs_sphinx = '1.0'

# Add any Sphinx extension module names here, as strings. They can be
# extensions coming with Sphinx (named 'sphinx.ext.*') or your custom
# ones.
extensions = [
    "breathe",
    "sphinx.ext.intersphinx",
    "sphinxcontrib.jsmath",
    "sphinx.ext.autodoc",
    "sphinx.ext.autosummary",
    "numpydoc",
    "sphinx_markdown_tables",
    'sphinx.ext.doctest',
    "sphinx.ext.mathjax",
    'sphinx.ext.linkcode',
    "IPython.sphinxext.ipython_console_highlighting",
    "IPython.sphinxext.ipython_directive",
    "nbsphinx",
    "recommonmark",
    "sphinx_copybutton",
]

jsmath_path = "https://cdn.jsdelivr.net/npm/mathjax@2/MathJax.js?config=TeX-AMS_HTML"


ipython_mplbackend = 'str'

# Add any paths that contain templates here, relative to this directory.
templates_path = ['_templates']

# The suffix(es) of source filenames.
# You can specify multiple suffix as a list of string:
#
# source_suffix = ['.rst', '.md']
source_suffix = {".rst": "restructuredtext", ".md": "markdown"}

# The master toctree document.
master_doc = 'index'

# General information about the project.
project = 'cugraph-docs'
copyright = '2024-2025, NVIDIA Corporation'
author = 'NVIDIA Corporation'

# The version info for the project you're documenting, acts as replacement for
# |version| and |release|, also used in various other places throughout the
# built documents.
#
CUGRAPH_VERSION = Version(cugraph.__version__)
# The short X.Y version.
version = f"{CUGRAPH_VERSION.major:02}.{CUGRAPH_VERSION.minor:02}"
# The full version, including alpha/beta/rc tags.
release = f"{CUGRAPH_VERSION.major:02}.{CUGRAPH_VERSION.minor:02}.{CUGRAPH_VERSION.micro:02}"

# The language for content autogenerated by Sphinx. Refer to documentation
# for a list of supported languages.
#
# This is also used if you do content translation via gettext catalogs.
# Usually you set "language" from the command line for these cases.
language = 'en'

# List of patterns, relative to source directory, that match files and
# directories to ignore when looking for source files.
# This patterns also effect to html_static_path and html_extra_path
exclude_patterns = []

suppress_warnings = ['duplicate_declaration.cpp']


# The name of the Pygments (syntax highlighting) style to use.
pygments_style = 'sphinx'

# If true, `todo` and `todoList` produce output, else they produce nothing.
todo_include_todos = False


# -- Options for HTML output ----------------------------------------------

# The theme to use for HTML and HTML Help pages.  See the documentation for
# a list of builtin themes.
#

html_theme = 'pydata_sphinx_theme'



# If true, `todo` and `todoList` produce output, else they produce nothing.
todo_include_todos = False

# Theme options are theme-specific and customize the look and feel of a theme
# further.  For a list of options available for each theme, see the
# documentation.
#
html_theme_options = {
    "external_links": [],
    "github_url": "https://github.com/rapidsai/cugraph",
    "twitter_url": "https://twitter.com/rapidsai",
    "show_toc_level": 1,
    "navbar_align": "right",
}

# Add any paths that contain custom static files (such as style sheets) here,
# relative to this directory. They are copied after the builtin static files,
# so a file named "default.css" will overwrite the builtin "default.css".
html_static_path = ['_static']


# -- Options for HTMLHelp output ------------------------------------------

# Output file base name for HTML help builder.
htmlhelp_basename = 'cugraphdoc'


# -- Options for LaTeX output ---------------------------------------------

latex_elements = {
    # The paper size ('letterpaper' or 'a4paper').
    #
    # 'papersize': 'letterpaper',

    # The font size ('10pt', '11pt' or '12pt').
    #
    # 'pointsize': '10pt',

    # Additional stuff for the LaTeX preamble.
    #
    # 'preamble': '',

    # Latex figure (float) alignment
    #
    # 'figure_align': 'htbp',
}

# Grouping the document tree into LaTeX files. List of tuples
# (source start file, target name, title,
#  author, documentclass [howto, manual, or own class]).
latex_documents = [
    (master_doc, 'cugraph.tex', 'cugraph Documentation',
     'NVIDIA Corporation', 'manual'),
]


# -- Options for manual page output ---------------------------------------

# One entry per manual page. List of tuples
# (source start file, name, description, authors, manual section).
man_pages = [
    (master_doc, 'cugraph', 'cugraph Documentation',
     [author], 1)
]


# -- Options for Texinfo output -------------------------------------------

# Grouping the document tree into Texinfo files. List of tuples
# (source start file, target name, title, author,
#  dir menu entry, description, category)
texinfo_documents = [
    (master_doc, 'cugraph', 'cugraph Documentation',
     author, 'cugraph', 'GPU-accelerated graph analysis.',
     'Miscellaneous'),
]

# Example configuration for intersphinx: refer to the Python standard library.
intersphinx_mapping = {
    "python": ("https://docs.python.org/", None),
}

# Config numpydoc
numpydoc_show_inherited_class_members = False
numpydoc_class_members_toctree = False


def setup(app):
    app.add_css_file("https://docs.rapids.ai/assets/css/custom.css")
    app.add_js_file("https://docs.rapids.ai/assets/js/custom.js", loading_method="defer")
    app.add_css_file("references.css")


source_suffix = ['.rst', '.md']

# The following is used by sphinx.ext.linkcode to provide links to github
linkcode_resolve = make_linkcode_resolve(
    "https://github.com/rapidsai/cugraph/blob/{revision}/python/{path}#L{lineno}"
)

breathe_projects = {
    'libcugraph': os.environ['XML_DIR_LIBCUGRAPH'],
    'libwholegraph': os.environ['XML_DIR_LIBWHOLEGRAPH']
}

breathe_default_project = "libcugraph"
