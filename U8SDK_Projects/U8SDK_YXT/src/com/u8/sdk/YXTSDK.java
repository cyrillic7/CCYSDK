package com.u8.sdk;

import org.json.JSONException;
import org.json.JSONObject;

import android.util.Log;
import android.widget.Toast;

import com.yyjia.sdk.center.GMcenter;
import com.yyjia.sdk.data.Information;
import com.yyjia.sdk.listener.LoginListener;
import com.yyjia.sdk.listener.PayListener;

public class YXTSDK {

	private static YXTSDK instance;
	GMcenter mCenter=null;
	
	private String appid;
	
	public static YXTSDK getInstance(){
		if(instance == null){
			instance = new YXTSDK();
		}
		return instance;
	}
	
	public void initSDK(SDKParams params){
		this.parseSDKParams(params);
		this.initSDK();
	}
	
	private void parseSDKParams(SDKParams params){
		this.appid = params.getString("YXT_APPID");
		//this.isFixePay = params.getBoolean("BD_FIXEPAY");
		//this.ratio = params.getInt("BD_RATIO");
	}
	
	private void initSDK(){
		Log.v("U8SDK","initSDK 111111");
		//mCenter = GMcenter.getInstance1(U8SDK.getInstance().getContext());
		
		
	}
	
	public void login(){//登录 
		mCenter = GMcenter.getInstance1(U8SDK.getInstance().getContext());
		
		mCenter.setLoginListener(new LoginListener() {	
			//登录监听方法
			@Override
			public void loginSuccessed(String code) {
			// TODO Auto-generated method stub
				if(code==Information.LOGIN_SUSECCEDS){
					String sid=mCenter.getSid();//取得sessionid
					int userid=mCenter.getUid();
					U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_SUCCESS,String.valueOf(userid));
                    String result = encodeLoginResult(String.valueOf(userid),sid);
                    U8SDK.getInstance().onLoginResult(result);
					//Toast.makeText(MainActivity.this, "登录成功", Toast.LENGTH_LONG).show();
					Log.v("U8SDK","sid = " + sid + "uid = " + String.valueOf(userid));
				}else{
					Toast.makeText(U8SDK.getInstance().getContext(), "登录失败", Toast.LENGTH_LONG).show();
				}
			}
			//登出监听方法
			public void logoutSuccessed(String code) {
				// TODO Auto-generated method stub
					if(code==Information.LOGOUT_SUSECCED){
						String sid=mCenter.getSid();//取得sessionid
						U8SDK.getInstance().onLogout();
						//Toast.makeText(MainActivity.this, "退出成功22", Toast.LENGTH_LONG).show();
						Log.e("eeee",sid);
					}else{
						//Toast.makeText(U8SDK.getInstance().getContext(), "退出失败", Toast.LENGTH_LONG).show();
					}
				}
		});
		
		mCenter.checkLogin();
		
	}
	
	public void switchLogin(){
		mCenter.logout();
		//U8SDK.getInstance().onLogout();
	}
	public void pay(final PayParams data){
		
		mCenter.pay(U8SDK.getInstance().getContext(),data.getPrice(),data.getProductName(),data.getServerId(),data.getRoleId(),data.getOrderID(),"",new PayListener()
		{
			@Override
			public void paySuccessed(String code,String cporderid) {
				// TODO 自动生成的方法存根
				if(code==Information.PAY_SUSECCED){
					U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "pay successed.");
					//Toast.makeText(MainActivity.this, cporderid+"支付成功", Toast.LENGTH_LONG).show();
				}else{
					U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay failed.");
					//Toast.makeText(U8SDK.getInstance().getContext(), "充值失败", Toast.LENGTH_LONG).show();
				}
		}
		});
	}
	
	private String encodeLoginResult(String openId,String token) {
	
			
			JSONObject ext = new JSONObject();
			try {
				ext.put("userID", 0);
				ext.put("sdkUserID", openId);
				ext.put("username", "");
				ext.put("sdkUserName", "");
				ext.put("token", token);
				ext.put("extension", openId);
				
			} catch (JSONException e) {
				e.printStackTrace();
			}
			/*try {
				ext.put("accountType", requesttype);
				ext.put("token", accessToken);
				ext.put("extension", openId);
				
			} catch (JSONException e) {
				e.printStackTrace();
			}*/
	
			return ext.toString();
		}
}
