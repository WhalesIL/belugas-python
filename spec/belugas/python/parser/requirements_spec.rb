require "spec_helper"

describe Belugas::Python::Parser::Requirements do
  subject {
    Belugas::Python::Parser::Requirements.new("spec/support/requirements.txt")
  }

  it "has a bunch of requirements" do
    expect(subject.requirements).not_to be nil
  end

  context "Requirement name with uppercase or lowercase" do
    it "with Django uppercase framework" do
      requirements_with_uppercase = Belugas::Python::Parser::Requirements.new("spec/support/requirements_with_uppercase_django.txt")
      expect(requirements_with_uppercase.requirements.first.name).to eq "django"
    end

    it "with django lowercase framework" do
      requirements_with_uppercase = Belugas::Python::Parser::Requirements.new("spec/support/requirements_with_lowercase_django.txt")
      expect(requirements_with_uppercase.requirements.first.name).to eq "django"
    end
  end

  context "Requirements without version" do
    it "returns the requirement with version 0" do
      requirements_without_version = Belugas::Python::Parser::Requirements.new("spec/support/requirements_without_version.txt")
      expect(requirements_without_version.requirements.first.name).to eq "flask"
      expect(requirements_without_version.requirements.first.version).to eq 0
    end
  end

  context "requirements is empty" do
    failed_subject = Belugas::Python::Parser::Requirements.new("spec/support/empty_requirements.txt")

    it "has nothing to offer" do
      expect(failed_subject.requirements).to be_empty
    end
  end
end
