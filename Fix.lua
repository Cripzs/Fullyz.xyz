local FullyzFolder = "Fullyz.xyz"

if isfolder(FullyzFolder) then
    delfolder(FullyzFolder)
    print('Deleted folder called "Fullyz.xyz".')
else
    print('Folder called "Fullyz.xyz" not found')
end
