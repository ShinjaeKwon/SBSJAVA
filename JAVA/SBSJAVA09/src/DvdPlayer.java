
public class DvdPlayer {
	protected int trackNum;
	
	public void play(){ /* 재생 기능 */}
	public void stop() { /*재생 멈춤*/ }
	public void beforeTrack(){trackNum--;}
	public void nextTrack(){trackNum++;}
	public void reset(){trackNum = 1;}
	
	public int getTrackNum(){
		return trackNum;
	}
	
	public void setTrackNum(int trackNum){
		this.trackNum = trackNum;
	}
}
