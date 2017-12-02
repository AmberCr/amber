# NOTE: Constants should be set before require begins.

ENV[Amber::AMBER_ENV] = "test"
ENV[Amber::Support::ENCRYPT_ENV] = "mnDiAY4OyVjqg5u0wvpr0MoBkOGXBeYo7_ysjwsNzmw"
TEST_PATH         = "spec/support/sample"
PUBLIC_PATH       = TEST_PATH + "/public"
VIEWS_PATH        = TEST_PATH + "/views"
TEST_APP_NAME     = "test_app"
TESTING_APP       = "./tmp/#{TEST_APP_NAME}"
APP_TEMPLATE_PATH = "./src/amber/cli/templates/app"
CURRENT_DIR       = Dir.current

Amber.environment_path = "./spec/support/config"
Amber.env=(ENV[AMBER_ENV])
Amber.settings.redis_url = ENV["REDIS_URL"]? || Amber.settings.redis_url

require "http"
require "spec"
require "../src/amber"
require "../src/amber/cli/commands"
require "./amber/controller/*"
require "./support/fixtures"
require "./support/helpers"

include Helpers
