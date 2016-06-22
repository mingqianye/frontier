# implementation of "Using Discourse as a SSO provider"
# refenrece: https://meta.discourse.org/t/using-discourse-as-a-sso-provider/32974

class SsoEndPoint
  def initialize(opts)
    #params should be something that looks like: {sso: "xxxxxx", sig: "yyyyyy"} 
    @nonce = opts[:nonce]
    @sso   = opts[:sso]
    @sig   = opts[:sig]
  end

  def user_info
    raise 'HMAC mismatch.'        if signitures_not_match?
    raise 'String not in Base64.' if sso_string_is_not_base64?
    raise 'Nonce mismatch.'       if nonces_not_match?
    decoded_response.except('nonce')
  end

  private 
  def signitures_not_match?
    SsoUtils.get_hmac_hex_string(@sso) != @sig
  end

  def sso_string_is_not_base64?
    ! SsoUtils.base64?(@sso)
  end

  def nonces_not_match?
    decoded_response['nonce'] != @nonce
  end

  def decoded_response
    @decoded_response ||= Rack::Utils.parse_query(Base64.decode64(@sso))
  end
end
