# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :email_addresses
    def initialize(emails)
        @email_addresses = emails
    end
    def email?(email)
        arrNameHost = []
        arrHost = []
        arrNameHost = email.split("@")
        if arrNameHost.count == 2
            arrHost = arrNameHost[1].split(".")
        end
        return (arrNameHost.count == 2) && (arrHost.count == 2)
    end
    def parse
        arrRet = []
        arrEmails = @email_addresses.split(/[\s,]/)
        arrEmails.each do |item|
            if email?(item) && !arrRet.include?(item)
                arrRet << item
            end
        end
        arrRet
    end
end