public class TvDvdP extends Tv implements IDvdPlayer {
	DvdPlayer dvdP = new DvdPlayer();
	
	public void play() { dvdP.play();}
	public void stop() {dvdP.stop();}
	public void beforeTrack(){dvdP.beforeTrack();}
	public void nextTrack(){ dvdP.nextTrack();}
	public void reset(){dvdP.reset();}
	
	public int getTrackNum() {
		return dvdP.getTrackNum();
	}
	public void setTrackNum(int trackNum) {
		dvdP.setTrackNum(trackNum);
	}
}
