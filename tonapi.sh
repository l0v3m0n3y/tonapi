api="https://tonapi.io/v2/"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"
function blockchain_accounts() {
		curl --request GET \
		--url "$api/blockchain/accounts/$1" \
		--user-agent "$user_agent" \
		--header "accept: application/json"
}
function get_staking_pool() {
		curl --request GET \
		--url "$api/staking/pool/$1" \
		--user-agent "$user_agent" \
		--header "accept: application/json"
}
function get_account_info() {
		curl --request GET \
		--url "$api/accounts/$1/jettons?currencies=$2" \
		--user-agent "$user_agent" \
		--header "accept: application/json"
}
function get_nfts_data() {
		curl --request GET \
		--url "$api/nfts/$1" \
		--user-agent "$user_agent" \
		--header "accept: application/json"
}
function get_rates_coin() {
		curl --request GET \
		--url "$api/rates?tokens=$1&currencies=$2" \
		--user-agent "$user_agent" \
		--header "accept: application/json"
}