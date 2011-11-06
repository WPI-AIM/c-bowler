package com.neuronrobotics.addons.driving;
/**
 * This class represents the Delta position of the robot in the robots co-ordinate system. 
 * Only the delta y, delta x and delta orentation relative to the robots current position
 * should be recorded here. 
 * @author Kevin Harrington
 *
 */

public class RobotLocationData {
	private double x,y,o;
	RobotLocationData(double deltaX, double deltaY, double deltaOrentation){
		 setX(deltaX);
		 setY(deltaY);
		 setO(deltaOrentation);
	}
	public String toString() {
		String s="delta: x="+x+" y="+y+" orentation="+o; 
		return s;
	}
	private void setX(double x) {
		this.x = x;
	}
	public double getDeltaX() {
		return x;
	}
	private void setY(double y) {
		this.y = y;
	}
	public double getDeltaY() {
		return y;
	}
	private void setO(double o) {
		this.o = o;
	}
	public double getDeltaOrentation() {
		return o;
	}
}
