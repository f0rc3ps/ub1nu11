import pytest
import unittest

from modules.sfp_crxcavator import sfp_crxcavator
from sflib import SpiderFoot


@pytest.mark.usefixtures
class TestModuleCrxcavator(unittest.TestCase):

    def test_opts(self):
        module = sfp_crxcavator()
        self.assertEqual(len(module.opts), len(module.optdescs))

    def test_setup(self):
        sf = SpiderFoot(self.default_options)
        module = sfp_crxcavator()
        module.setup(sf, dict())

    def test_watchedEvents_should_return_list(self):
        module = sfp_crxcavator()
        self.assertIsInstance(module.watchedEvents(), list)

    def test_producedEvents_should_return_list(self):
        module = sfp_crxcavator()
        self.assertIsInstance(module.producedEvents(), list)
