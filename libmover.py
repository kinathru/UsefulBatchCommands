import os,shutil

print("Lib Mover\n\n")

libSrcPath = "F:\\git-lab\\travelbox_core\\framework"
serviceLibSrcPath = "F:\\trunk\\travelboxv4\\extensions\\service"
libDestPath = "E:\\VH\\libs-upto-date\\"

print("Cleaning Destination Directory:\n")
for root,dirs,files in os.walk(libDestPath):
    for name in files:
        os.remove(libDestPath + name)


for root,dirs,files in os.walk(libSrcPath):
    for name in files:
        if(name.endswith("SNAPSHOT.jar")):
            print(os.path.join(root, name))
            src = os.path.join(root, name)
            dst = libDestPath + name
            shutil.copyfile(src,dst)

print("\n\n")

for root,dirs,files in os.walk(serviceLibSrcPath):
    for dirName in dirs:
        if(dirName == "RESTServiceLibrary"):
            print(dirName)
            print(os.path.join(root, dirName))
            
            for root,dirs,files in os.walk(os.path.join(root, dirName)):
                for name in files:
                    if(name.endswith("SNAPSHOT.jar")):
                        print(name)
                        print("\n\n")

        if(dirName == "BaseService" ):
            print(dirName)
            print(os.path.join(root, dirName))
            
            for root,dirs,files in os.walk(os.path.join(root, dirName)):
                for name in files:
                    if(name.endswith("SNAPSHOT.jar")):
                        print(name)
                        print("\n\n")
    
