class OfferController < ApplicationController

  include Rack::Utils

  def index
    @university_id ||= session[:university_id]
    render 'index'
  end

def email

    fields = parse_nested_query(params[:fields])

    puts fields

    p = Personal.new
    p.first_name = fields['firstname']
    p.last_name = fields['lastname']
    p.gender = fields['gender']
    p.birth_year = (Time.now.year.to_f - fields['age'].to_f)
    p.phone = "(" + fields['phone-country'] + ")" + fields['phone-number']
    p.email = fields['email']
    p.university_id = fields['personals']['university_id']
    p.country_id = fields['personals']['country_id']
    p.faculty_id = fields['major']
    p.message = fields['else']
    if p.save!
      UserMailer.offer_confirmation(p).deliver
    end

    session[:offer_id] = p.id

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

  def additional

    fields = parse_nested_query(params[:fields])

    puts fields

    p = Personal.find(session[:offer_id])
    p.where_did = heard
    p.who_encouraged = encourage
    p.save!

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
