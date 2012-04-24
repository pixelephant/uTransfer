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
    p.gender = params[:gender]
    p.birth_year = (Time.now.year.to_f - fields['age'].to_f)
    p.phone = "(" + fields['phone-country'] + ")" + fields['phone-number']
    p.email = fields['email']
    p.country_id = fields['personals']['country_id']
    if(params[:uni] == 'yes-uni')
        p.university_id = fields['personals']['university_id']
        p.faculty_id = fields['major']
    else
        interested = ''
        if(fields['economy'] == 'on')
            interested << 'Economy, '
        end
        if(fields['arts'] == 'on')
            interested << 'Arts, '
        end
        if(fields['tourism'] == 'on')
            interested << 'Tourism, '
        end
        if(fields['music'] == 'on')
            interested << 'Music, '
        end
        if(fields['engineering'] == 'on')
            interested << 'Engineering, '
        end
        if(fields['it'] == 'on')
            interested << 'IT,'
        end
        if(fields['business'] == 'on')
            interested << 'Business'
        end
        p.interests = interested
    end
    p.message = fields['else']
    p.level = params[:type]
    if p.save!
      UserMailer.offer_confirmation(p).deliver
    end

    session[:offer_id] = p.id

  	respond_to do |format|
      format.json { render :json => '{
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
    heard = ''
    encourage = ''

    if(fields['encourage_friends'] == 'on')
        encourage += 'Friend, '
    end
    if(fields['encourage_parent'] == 'on')
        encourage += 'Parent'
    end

    if(fields['hear_ad'] == 'on')
        heard += 'Ad, '
    end
    if(fields['hear_google'] == 'on')
        heard += 'Google, '
    end
    if(fields['hear_agent'] == 'on')
        heard += 'Agent, '
    end
    if(fields['hear_brochure'] == 'on')
        heard += 'Brochure, '
    end
    if(fields['hear_openday'] == 'on')
        heard += 'Open Day'
    end

    p.who_encouraged_other = fields['other-encourage']
    p.where_did_other = fields['other-hear']

    p.where_did = heard
    p.who_encouraged = encourage
    if p.save!
      UserMailer.offer_additional(p).deliver
    end

  	respond_to do |format|
      format.json { render :json => '{
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
