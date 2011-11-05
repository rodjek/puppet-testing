require 'spec_helper'

describe 'bool2num' do
  it { should run.with_params('true').and_return(1) }
  it { should run.with_params('t').and_return(1) }
  it { should run.with_params('y').and_return(1) }
  it { should run.with_params('yes').and_return(1) }
  it { should run.with_params('1').and_return(1) }

  it { should run.with_params('false').and_return(0) }
  it { should run.with_params('f').and_return(0) }
  it { should run.with_params('n').and_return(0) }
  it { should run.with_params('no').and_return(0) }
  it { should run.with_params('0').and_return(0) }
  it { should run.with_params('undef').and_return(0) }
  it { should run.with_params('undefined').and_return(0) }
  it { should run.with_params('').and_return(0) }

  it { should run.with_params('foo').and_raise_error(Puppet::ParseError) }
end
