pragma solidity >=0.4.22 <0.6.0;
contract FinalProject {

    struct MusicVideo {
        uint viewCount;
    }
    
    MusicVideo[] mvs;

    constructor(uint8 _numOfMusicVideos) public {
        mvs.length = _numOfMusicVideos;
    }

    function viewVideo(uint8 _id) public {
        if(_id >= mvs.length)   return;
        mvs[_id].viewCount += 1;
    }

    function checkViewCount(uint8 _id) public view returns (uint256 _viewCount) {
       if(_id >= mvs.length)   return 0;
       _viewCount = mvs[_id].viewCount;
    }
    
}

