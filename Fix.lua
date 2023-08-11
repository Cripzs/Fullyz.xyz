local FullyzFolder = "Fullyz.xyz"

if isfolder(logFolderPath) then
    delfolder(logFolderPath)
    print('Deleted folder called "Fullyz.xyz".')
else
    print('Folder called "Fullyz.xyz" not found')
end
