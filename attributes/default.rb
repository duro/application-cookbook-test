# /* --------------------------------------- */
# /* --( Default Application config )-- */
# /* --------------------------------------- */

default["test"]["app_name"]   = "test-outdoor"
default["test"]["deploy_to"]  = "/opt/test-outdoor"
default["test"]["user"]       = "test"
default["test"]["group"]      = "test"
default["test"]["home_path"]  = "/home/#{node["test"]["user"]}"

# /* --------------------------------------- */
# /* --( Repo )-- */
# /* --------------------------------------- */

default["test"]["repo"]["url"] = 'git@github.com:zehnergroup/test-test.git'
default["test"]["repo"]["branch"] = 'dev'

default["test"]["repo"]["deploy_key"] = "-----BEGIN RSA PRIVATE KEY-----
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
-----END RSA PRIVATE KEY-----"