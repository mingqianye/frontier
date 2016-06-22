# implementation of "Using Discourse as a SSO provider"
# refenrece: https://meta.discourse.org/t/using-discourse-as-a-sso-provider/32974
class SsoEntryPoint
  attr_reader :nonce

  def initialize(return_url)
    @return_url = return_url
    @nonce      = SecureRandom.hex
  end

  def request_url
    raw_payload            = "nonce=#{@nonce}&return_sso_url=#{@return_url}"
    base64_encoded_payload = Base64.encode64(raw_payload)
    url_encoded_payload    = URI.escape(base64_encoded_payload)
    payload_signiture      = SsoUtils.get_hmac_hex_string(base64_encoded_payload)
    "#{Settings.discourse.sso_url}?sso=#{url_encoded_payload}&sig=#{payload_signiture}"
  end
end
