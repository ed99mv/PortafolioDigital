class Contact < MailForm::Base
    attribute :name, validate: true
    attribute :message


    def headers
    {
        subject: 'PROBANDO',
        to: 'edwardT_223@hotmail.com',
        from: %(#{name} <#{'edwardT_223@hotmail.com'}>)
    }
    end
end