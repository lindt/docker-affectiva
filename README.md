[![Docker pulls](https://img.shields.io/docker/pulls/think/affectiva.svg)](https://hub.docker.com/r/think/affectiva/)
[![Docker Build](https://img.shields.io/docker/automated/think/affectiva.svg)](https://hub.docker.com/r/think/affectiva/)
[![Latest Tag](https://img.shields.io/github/tag/lindt/docker-affectiva.svg)](https://hub.docker.com/r/think/affectiva/)

# docker-affectiva

Docker Image for [Affectiva](http://www.affectiva.com/). Recognizes Emotions on images.

## Usage

`cat your_image.jpg | docker run -i think/affectiva`

will provide the detected faces with it's emotions on the image.

## Example

### TUM Image with Roboy

<img src="https://www.tum.de/typo3temp/_processed_/csm_Unknown.jpg_dae15e3e05.jpg">

### Result

```
TimeStamp,faceId,interocularDistance,glasses,age,ethnicity,gender,dominantEmoji,pitch,yaw,roll,joy,fear,disgust,sadness,anger,surprise,contempt,valence,engagement,smile,innerBrowRaise,browRaise,browFurrow,noseWrinkle,upperLipRaise,lipCornerDepressor,chinRaise,lipPucker,lipPress,lipSuck,mouthOpen,smirk,eyeClosure,attention,eyeWiden,cheekRaise,lidTighten,dimpler,lipStretch,jawDrop,relaxed,smiley,laughing,kissing,disappointed,rage,smirk,wink,stuckOutTongueWinkingEye,stuckOutTongue,flushed,scream,
0.0000,0,61.2207,no,55-64,caucasian,male,Relaxed,-4.2197,-15.5415,9.8277,99.9116,0.0000,0.0000,0.0000,0.0000,0.1937,0.0001,73.4042,98.6697,98.6697,0.0291,0.0035,0.0015,0.0112,0.0000,0.0000,5.8879,0.0000,0.0502,78.4025,0.1575,0.0212,0.0000,78.4436,0.0042,0.1287,0.0914,0.0902,44.4586,0.0000,99.9117,0.0019,0.0018,0.0018,0.0018,0.0000,0.0000,0.0873,2.2977,2.2977,0.0018,0.0280,
0.0000,1,47.7133,yes,35-44,caucasian,male,Unknown,11.6845,-21.7365,-16.8098,99.7475,0.0001,0.0005,0.0000,0.0000,1.3119,0.0002,92.9235,92.8945,92.8945,0.0002,0.0000,0.0229,0.1114,0.0041,0.0000,0.0000,0.0000,0.0000,0.0000,77.2500,0.0159,0.0000,51.3173,0.0006,0.2340,0.0721,0.0000,0.0000,54.0708,0.1142,25.4590,0.0018,0.0018,0.0018,0.0000,0.0000,0.0018,2.2977,2.2977,0.0018,0.1994,
0.0000,2,47.9986,no,35-44,caucasian,female,Smiley,-6.2549,12.5377,6.2277,99.9306,0.0001,0.0003,0.0000,0.0000,1.9236,0.0001,99.8009,100.0000,100.0000,0.0031,0.0000,0.0009,0.2336,0.0000,0.0000,0.2003,0.0000,0.0698,0.0003,92.7363,0.0000,0.0000,86.9037,0.0000,1.2941,11.0647,0.0304,43.0949,0.0000,0.0069,72.0561,0.0019,0.0018,0.0018,0.0000,0.0000,0.0018,2.2977,2.2977,0.0018,0.0280,
```


### Random Googled Image

<img src="http://www.osnabrueck.de/fileadmin/_processed_/csm_Faces_of_Migration_PR_MaduJens_04a8272ac9.jpg">

### Result

```
TimeStamp,faceId,interocularDistance,glasses,age,ethnicity,gender,dominantEmoji,pitch,yaw,roll,joy,fear,disgust,sadness,anger,surprise,contempt,valence,engagement,smile,innerBrowRaise,browRaise,browFurrow,noseWrinkle,upperLipRaise,lipCornerDepressor,chinRaise,lipPucker,lipPress,lipSuck,mouthOpen,smirk,eyeClosure,attention,eyeWiden,cheekRaise,lidTighten,dimpler,lipStretch,jawDrop,relaxed,smiley,laughing,kissing,disappointed,rage,smirk,wink,stuckOutTongueWinkingEye,stuckOutTongue,flushed,scream,
0.0000,0,103.9141,yes,55-64,caucasian,male,Smiley,-3.1884,16.1206,-26.0323,99.9290,0.0002,0.0003,0.0000,0.0000,2.1913,0.0001,99.3634,99.9804,99.9804,0.0172,0.0000,0.2648,0.0011,0.0000,0.0000,1.7430,0.0031,0.0281,0.0017,98.8271,0.0007,0.0000,76.4205,0.0000,0.0000,0.0001,0.5111,0.2052,0.1093,0.0022,83.8833,0.0018,0.0018,0.0018,0.0000,0.0000,0.0018,2.2977,4.6956,0.0018,0.0281,
0.0000,1,88.1978,no,under 18,caucasian,female,Smiley,-16.2771,-5.1691,0.2775,99.9306,0.0002,0.0003,0.0000,0.0000,2.2974,0.0001,99.9724,100.0000,100.0000,0.0006,0.0000,0.0023,0.0011,0.0523,0.0000,0.0001,0.0000,0.0000,0.0000,99.9998,0.0000,0.0000,96.6631,0.0028,0.0397,0.0020,0.0000,0.5964,6.2588,0.0018,86.0576,0.0018,0.0018,0.0018,0.0000,0.0000,0.0018,2.2977,2.2981,0.0018,0.0351,
```

## References

 - based on [Affectiva SDK](http://developer.affectiva.com/)
