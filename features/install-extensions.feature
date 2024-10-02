Feature: Extensions can be installed with Behat

  Example: The latest version of an extension can be downloaded
    When I run a command to download the latest version of an extension
    Then the latest version should have been downloaded

  Scenario Outline: A version matching the requested constraint can be downloaded
    When I run a command to download version "<constraint>" of an extension
    Then version "<version>" should have been downloaded

    Examples:
      | constraint | version  |
      | dev-main   | dev-main |
      | 2.0.0      | 2.0.0    |
      | ^2.0       | 2.0.0    |

  @wip
  Example: An extension can be built
    When I run a command to build an extension
    Then the extension should have been built

  @wip
  Example: An extension can be built with configure options
    When I run a command to build an extension with configure options
    Then the extension should have been built

  @wip
  Example: An extension can be installed
    When I run a command to install an extension
    Then the extension should have been installed
