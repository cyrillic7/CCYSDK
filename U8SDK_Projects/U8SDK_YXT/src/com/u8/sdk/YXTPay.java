package com.u8.sdk;

import android.app.Activity;

public class YXTPay implements IPay {

	public YXTPay(Activity context){
		
	}
	
	@Override
	public boolean isSupportMethod(String methodName) {
		return true;
	}

	public void pay(PayParams data) {
		YXTSDK.getInstance().pay(data);
	}

}