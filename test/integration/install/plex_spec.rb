control 'Plex-plexmediaserver' do
  impact 1.0
  title 'The plexmediaserver service is running'

  describe package('plexmediaserver') do
    it { should be_installed }
  end

  describe service('plexmediaserver') do
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
  end
end
