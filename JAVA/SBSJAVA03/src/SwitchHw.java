
public class SwitchHw {

	public static void main(String[] args) {
		int jumsoo = 87;
		
		switch (jumsoo){
		case 100: case 99: case 97: case 96: case 95: case 94: case 93: case 92: case 91:  
			System.out.println("A학점입니다.");
			break;
		case 90: case 89: case 87: case 86: case 85: case 84: case 83: case 82: case 81:
			System.out.println("B학점입니다.");
			break;
		case 80: case 79: case 78: case 77: case 76: case 75: case 74: case 73: case 72: case 71:
			System.out.println("C학점입니다.");
			break;
		case 70: case 69: case 68: case 67: case 66: case 65: case 64: case 63: case 62: case 61:
			System.out.println("D학점입니다.");
			break;
		default:
			System.out.println("F학점입니다.");
			break;
		}
	}
}
