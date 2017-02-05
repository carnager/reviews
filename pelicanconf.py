#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

DEFAULT_PAGINATION = False
AUTHOR = 'Rasi'
SITENAME = 'A Liberal Education'
SITEURL = 'http://reviews.53280.de'
PATH = 'content'

TIMEZONE = 'Europe/Berlin'
COVER_IMG_URL='/images/cd.jpg'
DEFAULT_LANG = 'en'
PROFILE_IMG_URL = '/images/avatar.png'

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None

# Blogroll
LINKS =  (('About', '#/'),)

SOCIAL = (
    ('heart-o', 'https://list.53280.de'),
    ('circle-thin', 'http://lastfm.com/user/rasi_x'),
    ('github', 'https://github.com/carnager'),
)


SITES = (
    ('about', 'about.html'),
)

DEFAULT_PAGINATION = 10

# Uncomment following line if you want document-relative URLs when developing
#RELATIVE_URLS = True

THEME = "themes/pure-single"

PLUGIN_PATHS = ['pelican-plugins']
# PLUGINS = ['sitemap', 'related_posts', 'liquid_tags']

DIRECT_TEMPLATES = (('index', 'tags', 'categories','archives', 'search', '404'))
# MD_EXTENSIONS = ['codehilite(css_class=highlight)', 'extra', 'headerid']
STATIC_PATHS = ['images', 'images/artists', 'images/covers',]

MARKDOWN = {
    'extension_configs': {
        'markdown.extensions.codehilite': {'css_class': 'highlight'},
        'markdown.extensions.extra': {},
        'markdown.extensions.meta': {},
    },
    'output_format': 'html5',
}

SITEMAP = {
    'format': 'xml',
    'priorities': {
        'articles': 0.5,
        'indexes': 0.5,
        'pages': 0.5
    },
    'changefreqs': {
        'articles': 'monthly',
        'indexes': 'daily',
        'pages': 'monthly'
    }
}
