package com.neuronrobotics.addons.driving;

import com.neuronrobotics.sdk.pid.PIDEvent;

public class AckermanKinematics {
	AckermanBot robot;
	private int currentDriveTicks=0;
	
	protected final AckermanConfiguration config = new AckermanConfiguration();
	
	public AckermanKinematics(AckermanBot bot){
		robot=bot;
	}
	
	public void DriveStraight(double cm, double seconds) {
		robot.ResetDrivePosition();
		robot.setSteeringAngle(0);
		//SetDriveDistance((int) (cm*config.getCmtoTicks()),seconds);
		robot.SetDriveDistance(config.convertToTicks(cm),seconds);
	}
	
	public void DriveArc(double cmRadius, double degrees, double seconds) {
		robot.ResetDrivePosition();
		double archlen = cmRadius*((2*Math.PI*degrees)/(360));
		double steerAngle =((config.getWheelbase()/cmRadius));
		robot.setSteeringAngle(steerAngle);
		robot.SetDriveDistance(config.convertToTicks(archlen),seconds);
	}
	
	public void DriveVelocityStraight(double cmPerSecond) {
		robot.setSteeringAngle(0);
		robot.SetDriveVelocity(config.convertToTicks(cmPerSecond));
	}
	
	public void DriveVelocityArc(double degreesPerSecond, double cmRadius) {
		// TODO Auto-generated method stub
		double steerAngle =((config.getWheelbase()/cmRadius));
		robot.setSteeringAngle(steerAngle);
		double archlen = cmRadius*((2*Math.PI*degreesPerSecond)/(360));
		int ticks = config.convertToTicks(archlen);
		System.out.println("Seting PID set point of="+ticks);
		robot.SetDriveVelocity(ticks);
	}
	
	public void onPIDEvent(PIDEvent e) {
		System.out.println("\n\nCurrent Ticks="+currentDriveTicks+" Event="+e);
		int differenceTicks = (e.getValue()-currentDriveTicks);
		double archLen = config.convetrtToCm(differenceTicks);
		
		double radiusOfCurve=0;
		double centralAngleRadians=0;
		double deltLateral=0;
		double deltForward=0;
		if(robot.getSteeringAngle() !=0){
			radiusOfCurve = config.getWheelbase()/robot.getSteeringAngle();
			centralAngleRadians = archLen/radiusOfCurve;
			//System.out.println("Central angle of motion was: "+Math.toDegrees(centralAngleRadians) + " Radius of curve = "+radiusOfCurve);
			double y = radiusOfCurve*Math.sin(centralAngleRadians);
			double x = radiusOfCurve*Math.cos(centralAngleRadians);
			deltLateral =  -1*(radiusOfCurve-x);
			deltForward =  y;
		}else{
			//System.out.println("Steering angle of 0, moving forward");
			deltLateral =  0;
			deltForward =  archLen;
		}
		
		//System.out.println("Relative motion delta Ticks="+differenceTicks+", forward="+deltForward+", lateral="+deltLateral);
		double [] loc = robot.getPositionOffset(deltLateral, deltForward);
		
		robot.setCurrentX(loc[0]);
		robot.setCurrentY(loc[1]);
		robot.setCurrentOrentation( robot.getCurrentOrentation()+centralAngleRadians);
		
		currentDriveTicks=e.getValue();
		robot.fireDriveEvent();
	}
	
	public void onPIDReset( int currentValue){
		
	}

	public double getMaxTicksPerSeconds() {
		return config.getMaxTicksPerSeconds();
	}
}