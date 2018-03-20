.. spelling::

    caf

.. index:: frameworks ; caf ; actor-framework

.. _pkg.caf:

C++ Actor Framework (CAF)
=========================

-  `Official <https://github.com/actor-framework/actor-framework>`__
-  `Hunterized <https://github.com/alexeiz/actor-framework/tree/hunter>`__
-  `Example <https://github.com/ruslo/hunter/blob/master/examples/caf/CMakeLists.txt>`__

The following target link libraries are available:

- caf::libcaf_core_shared
- caf::libcaf_core_static
- caf::libcaf_io_shared
- caf::libcaf_io_static
- caf::libcaf_openssl_shared
- caf::libcaf_openssl_static

.. code-block:: cmake

    hunter_add_package(caf)
    find_package(caf CONFIG REQUIRED)
    find_package(Threads REQUIRED)
    target_link_libraries(... caf::libcaf_core_static Threads::Threads)
