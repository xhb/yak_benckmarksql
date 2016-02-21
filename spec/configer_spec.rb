require 'spec_helper'

describe Benchmarksql::Configer do
  
  let(:config) { Benchmarksql::Configer.load("./yak_config.json") }

  it "shoul respond to yak_config.json key as methods" do
    expect(config.conn).to eq "sql:server:http://123.456.789:1234"
  end

end