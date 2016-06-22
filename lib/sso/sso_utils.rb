class SsoUtils
  def self.get_hmac_hex_string(payload)
    OpenSSL::HMAC.hexdigest("sha256", DISCOURSE_SSO_SECRET, payload)
  end

  def self.base64?(data)
    !(data =~ /[^a-zA-Z0-9=\r\n\/+]/m)
  end
end

