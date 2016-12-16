[![Docker pulls](https://img.shields.io/docker/pulls/think/affectiva.svg)](https://hub.docker.com/r/think/affectiva/)
[![Docker Build](https://img.shields.io/docker/automated/think/affectiva.svg)](https://hub.docker.com/r/think/affectiva/)
[![Latest Tag](https://img.shields.io/github/tag/lindt/docker_affectiva.svg)](https://hub.docker.com/r/think/affectiva/)

# docket-affectiva

Docker Image for [Affectiva](http://www.affectiva.com/). Recognizes Emotions on images.

## Usage

`cat your_image.jpg | docker run -i think/affectiva`

will provide the detected faces with it's emotions on the image.

## Example

### Image

<img src="http://www.osnabrueck.de/fileadmin/_processed_/csm_Faces_of_Migration_PR_MaduJens_04a8272ac9.jpg">

### Result

```
TimeStamp,faceId,interocularDistance,glasses,age,ethnicity,gender,dominantEmoji,pitch,yaw,roll,joy,fear,disgust,sadness,anger,surprise,contempt,valence,engagement,smile,innerBrowRaise,browRaise,browFurrow,noseWrinkle,upperLipRaise,lipCornerDepressor,chinRaise,lipPucker,lipPress,lipSuck,mouthOpen,smirk,eyeClosure,attention,eyeWiden,cheekRaise,lidTighten,dimpler,lipStretch,jawDrop,relaxed,smiley,laughing,kissing,disappointed,rage,smirk,wink,stuckOutTongueWinkingEye,stuckOutTongue,flushed,scream,
0.0000,0,103.9141,yes,55-64,caucasian,male,Smiley,-3.1884,16.1206,-26.0323,99.9290,0.0002,0.0003,0.0000,0.0000,2.1913,0.0001,99.3634,99.9804,99.9804,0.0172,0.0000,0.2648,0.0011,0.0000,0.0000,1.7430,0.0031,0.0281,0.0017,98.8271,0.0007,0.0000,76.4205,0.0000,0.0000,0.0001,0.5111,0.2052,0.1093,0.0022,83.8833,0.0018,0.0018,0.0018,0.0000,0.0000,0.0018,2.2977,4.6956,0.0018,0.0281,
0.0000,1,88.1978,no,under 18,caucasian,female,Smiley,-16.2771,-5.1691,0.2775,99.9306,0.0002,0.0003,0.0000,0.0000,2.2974,0.0001,99.9724,100.0000,100.0000,0.0006,0.0000,0.0023,0.0011,0.0523,0.0000,0.0001,0.0000,0.0000,0.0000,99.9998,0.0000,0.0000,96.6631,0.0028,0.0397,0.0020,0.0000,0.5964,6.2588,0.0018,86.0576,0.0018,0.0018,0.0018,0.0000,0.0000,0.0018,2.2977,2.2981,0.0018,0.0351,
```

## References

 - based on [Affectiva SDK](http://developer.affectiva.com/)
