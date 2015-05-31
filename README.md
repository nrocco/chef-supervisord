supervisord Cookbook
====================

A chef cookbook that installs and configures `supervisor`.


Requirements
------------

This cookbook has been tested on `Ubuntu 12.04`.


Attributes
----------

For a reference of configurable attributes see `attributes/default.rb`.


Usage
-----

Just include `supervisord` in your node's `run_list`:

    json
    {
      "name":"my_node",
      "run_list": [
        "recipe[supervisord]"
      ]
    }


Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github


License and Authors
-------------------

Authors: TODO: List authors
