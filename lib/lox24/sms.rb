module Lox24
  class Sms

    def self.create(msg={})
      uri = URI('https://www.lox24.eu/api/httpsms.php')
      res = Net::HTTP.post_form(uri,
        action: Lox24::Config.debug ? 'info': 'send',
        konto: Lox24::Config.client,
        password: Lox24::Config.password_hash,
        service: Lox24::Config.service,
        return: 'xml',
        text: msg[:text],
        to: msg[:to],
        from: msg[:from]
      )

      xml = XmlSimple.xml_in(res.body)
      code = xml['code'].first.to_i
      if code < 200
        xml['info'].first['MSGID'].first
      else
        false
      end

    end

 end
end
