require 'spec_helper'

Dir.glob('rails/locale/*.yml') do |locale_file|
  describe "a i18n-language-translations #{locale_file} locale file" do
    it_behaves_like 'a valid locale file', locale_file
    it { locale_file.should be_a_subset_of('rails/locale/en.yml') }

    I18n.locale = locale_file.split('/').last.split('.').first
    translations = I18n.backend.send(:translations)
    translations.keys.each do |locale_code|
      p I18n.t(locale_code, :scope => :languages, :separator => "\001") if I18n.t(locale_code, :scope => :languages, :separator => "\001").include?('translation missing')
      it { I18n.t(locale_code, :scope => :languages, :separator => "\001").should_not == locale_code }
      it { I18n.t(locale_code, :scope => :languages, :separator => "\001").include?('translation missing').should == false }
    end
  end
end
