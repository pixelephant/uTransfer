RailsAdmin.config do |config|
  config.included_models = [Essential, EssentialTranslation, EssentialText, EssentialTextTranslation, University, UniversityTranslation, Faculty, FacultyTranslation, FamousGraduate, FamousGraduateTranslation, Requirement, RequirementTranslation, ProcessFlow, ProcessFlowTranslation, TextBlock, TextBlockTranslation, Testimonial, TestimonialTranslation]

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

	config.model UniversityTranslation do

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

	config.model TextBlockTranslation do
    edit do
      include_all_fields
      field :text do
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
    end
  end

end
