class ContactController < ApplicationController

  include Rack::Utils

  def index
    render 'index'
  end

  def email

    fields = parse_nested_query(params[:fields])

    c = Contact.new
    c.name = fields['name']
    c.email = fields['email']
    c.why = fields['type']
    c.message = fields['message']
    if c.save!
      UserMailer.contact_confirmation(c).deliver
    end

  	respond_to do |format|
      format.json { render json: '{
    "glossary": {
        "title": "example glossary",
		"GlossDiv": {
            "title": "S",
			"GlossList": {
                "GlossEntry": {
                    "ID": "SGML",
					"SortAs": "SGML",
					"GlossTerm": "Standard Generalized Markup Language",
					"Acronym": "SGML",
					"Abbrev": "ISO 8879:1986",
					"GlossDef": {
                        "para": "A meta-markup language, used to create markup languages such as DocBook.",
						"GlossSeeAlso": ["GML", "XML"]
                    },
					"GlossSee": "markup"
                }
            }
        }
    }
}
' }
    end
  end

end
