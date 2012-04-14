RailsAdmin.config do |config|
  config.included_models = [Essential, EssentialTranslation, EssentialText, EssentialTextTranslation, University, UniversityTranslation, Faculty, FacultyTranslation, FamousGraduate, FamousGraduateTranslation, Requirement, RequirementTranslation, ProcessFlow, ProcessFlowTranslation, TextBlock, TextBlockTranslation, Testimonial, TestimonialTranslation, Media, RelatedIndustry, RelatedInstitution, Personal, LivingCost, IndexContent, IndexContentTranslation, UniversityImage, ExperienceImage ]

	config.model Essential do
		object_label_method :essential_label
	end

	config.model EssentialTranslation do
    edit do
      include_all_fields
    end
  end

	config.model EssentialText do
    edit do
      include_all_fields
      field :text do
        ckeditor true
      end
    end
  end

	config.model EssentialTextTranslation do
    edit do
      include_all_fields
      field :text do
        ckeditor true
      end
    end
  end

	config.model University do
    edit do
      include_all_fields
      field :description do
        ckeditor true
      end
      field :campus do
        ckeditor true
      end
      field :community do
        ckeditor true
      end
    end
  end

	config.model UniversityTranslation do
    edit do
      include_all_fields
      field :description do
        ckeditor true
      end
      field :campus do
        ckeditor true
      end
    end
  end

	config.model Faculty do
    edit do
      include_all_fields
      field :desc do
        ckeditor true
      end
    end
  end

	config.model FacultyTranslation do
    edit do
      include_all_fields
      field :desc do
        ckeditor true
      end
    end
  end

	config.model FamousGraduateTranslation do
    edit do
      include_all_fields
    end
  end

	config.model RequirementTranslation do
    edit do
      include_all_fields
      field :text do
        ckeditor true
      end
    end
  end

	config.model ProcessFlowTranslation do
    edit do
      include_all_fields
      field :text do
        ckeditor true
      end
    end
  end

	config.model ProcessFlow do
    edit do
      include_all_fields
      field :text do
        ckeditor true
      end
    end
  end

	config.model TextBlock do
    edit do
      include_all_fields
      field :text do
        ckeditor true
      end
    end
  end

	config.model TextBlockTranslation do
    edit do
      include_all_fields
      field :text do
        ckeditor true
      end
    end
  end

	config.model Testimonial do
    edit do
      include_all_fields
      field :quote do
        ckeditor true
      end
			field :about do
        ckeditor true
      end
			field :experiences do
        ckeditor true
      end
      field :career do
        ckeditor true
      end
    end
  end


	config.model TestimonialTranslation do
    edit do
      include_all_fields
      field :about do
        ckeditor true
      end
			field :experiences do
        ckeditor true
      end
			field :quote do
        ckeditor true
      end
    end
  end

	config.model Requirement do
    edit do
      include_all_fields
      field :tution_fee do
        ckeditor true
      end
			field :text do
        ckeditor true
      end
    end
		object_label_method :requirement_label
  end

	config.model IndexContent do
    edit do
      include_all_fields
      field :intro do
        ckeditor true
      end
			field :basic_info do
        ckeditor true
      end
			field :famous_person_quote do
        ckeditor true
      end
    end
  end

	config.model IndexContentTranslation do
    edit do
      include_all_fields
      field :intro do
        ckeditor true
      end
			field :basic_info do
        ckeditor true
      end
			field :famous_person_quote do
        ckeditor true
      end
    end
  end

	config.model UniversityImage do
		object_label_method :university_images_label
	end

	def essential_label
		self.topic
	end

	def requirement_label
		self.university.name + " - " + self.level if !self.university.nil?
	end

	def university_images_label
		self.university.name if !self.university.nil?
	end

end
