# Load the Rails application.
require File.expand_path('../application', __FILE__)

SEX = {
  male: 1,
  female: 2
}

TERM = {
  two: 1,
  three: 2,
  four: 3
}

PART = {
  arm: 1,
  shoulder: 2,
  bust: 3,
  back: 4,
  abs: 5,
  leg: 6
}

# Initialize the Rails application.
Rails.application.initialize!
