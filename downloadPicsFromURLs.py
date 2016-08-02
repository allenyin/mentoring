import urllib
import os
openner = urllib.URLopener()
f = open('imagenet.synset.geturls.txt')
nImages = 100

for i in range(nImages):
    imgURL = f.readline()[0:-2]
    fname, extension = os.path.splitext(imgURL)
    imgName = 'image' + str(i) + extension
    try:
        openner.retrieve(imgURL, imgName)
    except IOError:
        print "Picture not found, skipping ", i

