Puppet::Type.newtype(:influx_database) do
  @doc = "Manages Databases"
  ensurable

  newparam(:name, :namevar => true) do
    desc "name of user account"
  end
end
