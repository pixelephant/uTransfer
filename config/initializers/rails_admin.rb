RailsAdmin.config do |config|
  config.included_models = [Essential, EssentialTranslation, EssentialText, EssentialTextTranslation, University, UniversityTranslation, Faculty, FacultyTranslation, FamousGraduate, FamousGraduateTranslation, Requirement, RequirementTranslation, ProcessFlow, ProcessFlowTranslation, TextBlock, TextBlockTranslation, Testimonial, TestimonialTranslation, Media, RelatedIndustry, RelatedInstitution, Personal, LivingCost]

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
			field :how do
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
			field :how do
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

	def essential_label
		self.topic
	end

	def requirement_label
		self.university.name + " - " + self.level
	end

end
