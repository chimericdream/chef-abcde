name "Chef abcde"
maintainer "Bill Parrott"
maintainer_email "bill@chimericdream.com"
license "MIT"
description "Installs abcde and related dependencies"
version "0.2.1"
recipe "abcde", "Installs abcde"

%w{ ubuntu }.each do |os|
  supports os
end