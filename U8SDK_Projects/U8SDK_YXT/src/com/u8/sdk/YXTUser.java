package com.u8.sdk;

import android.app.Activity;

import com.u8.sdk.utils.Arrays;

public class YXTUser extends U8UserAdapter {

private String[] supportMethods = {"login","switchLogin"};
	
	public YXTUser(Activity context){
		YXTSDK.getInstance().initSDK(U8SDK.getInstance().getSDKParams());
	}
	
	public void login(){
		YXTSDK.getInstance().login();
	}
	
	@Override
	public void switchLogin() {
		// TODO Auto-generated method stub
		YXTSDK.getInstance().switchLogin();
		//YXTSDK.getInstance().login();
	}
	
	@Override
	public boolean isSupportMethod(String methodName) {
		// TODO Auto-generated method stub
		return Arrays.contain(supportMethods, methodName);
	}

}
