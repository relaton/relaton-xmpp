describe Relaton::Xsf::Bibdata do
  let(:file) { "spec/fixtures/bibdata.xml" }
  let(:input_xml) { File.read file, encoding: "UTF-8" }
  let(:item) { described_class.from_xml input_xml }

  it "round trip" do
    expect(described_class.to_xml(item)).to be_equivalent_to input_xml
  end
end
