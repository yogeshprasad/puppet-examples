Facter.add(:freememory) do
  setcode do
    Facter::Util::Resolution.exec("free -h  | grep ^Mem | tr -s ' ' | cut -d ' ' -f 4") 
  end
end

