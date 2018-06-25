package com.financial.yixin;

import android.app.Application;
import android.content.Context;

/**
 * Date:2018/6/20
 * Author: xingwang
 * Description:
 */
public class MyApplication extends Application {

    @Override
    public void onCreate() {
        super.onCreate();
    }

    @Override
    protected void attachBaseContext(Context base) {
        super.attachBaseContext(base);
        HotFixManager.init(this);
    }
}
