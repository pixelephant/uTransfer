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
        unless(defined?(economy).nil?)
            interested += 'Economy, '
        end
        unless(defined?(arts).nil?)
            interested += 'Arts, '
        end
        unless(defined?(tourism).nil?)
            interested += 'Tourism, '
        end
        unless(defined?(music).nil?)
            interested += 'Music, '
        end
        unless(defined?(engineering).nil?)
            interested += 'Engineering, '
        end
        unless(defined?(it).nil?)
            interested += 'IT,'
        end
        unless(defined?(business).nil?)
            interested += 'Business'
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

    unless(defined?(fields['encourage_friend']).nil?)
        encourage += 'Friend, '
    end
    unless(defined?(fields['encourage_parent']).nil?)
        encourage += 'Parent'
    end

    unless(defined?(fields['hear_ad']).nil?)
        heard += 'Ad, '
    end
    unless(defined?(fields['hear_google']).nil?)
        heard += 'Google, '
    end
    unless(defined?(fields['hear_agent']).nil?)
        heard += 'Agent, '
    end
    unless(defined?(fields['hear_brochure']).nil?)
        heard += 'Brochure, '
    end
    unless(defined?(fields['hear_openday']).nil?)
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
