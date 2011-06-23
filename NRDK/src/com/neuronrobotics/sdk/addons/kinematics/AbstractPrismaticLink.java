package com.neuronrobotics.sdk.addons.kinematics;

public abstract class AbstractPrismaticLink extends AbstractLink {

	public AbstractPrismaticLink(int home, int lowerLimit, int upperLimit,double scale) {
		super(home, lowerLimit, upperLimit, scale);
		// TODO Auto-generated constructor stub
	}
	public void incrementDisplacment(double inc,double time){
		incrementEngineeringUnits(inc, time);
	}
	public void setTargetDisplacment(double pos,double time) {
		setTargetDisplacment(pos, time);
	}
	public void setCurrentAsDisplacment(double Displacment) {
		setCurrentEngineeringUnits(Displacment);
	}
	public double getCurrentDisplacment(){
		return getCurrentEngineeringUnits();
	}
	public double getTargetDisplacment() {
		return getTargetEngineeringUnits();
	}
	public double getMaxDisplacment() {
		return getMaxEngineeringUnits();
	}
	public double getMinDisplacment() {
		return getMinEngineeringUnits();
	}
	public boolean isMaxDisplacment() {
		return isMaxEngineeringUnits();
	}
	public boolean isMinDisplacment() {
		return isMinEngineeringUnits();
	}
}