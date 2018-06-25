package com.financial.yixin;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

/**
 * Date:2018/6/20
 * Author: xingwang
 * Description:
 */
public class Utils {

    public static final String SHARED_PREFERENCE_NAME = "ncf_share";   //SharedPreference操作的文件

    /**
     * 获取版本name
     *
     * @return 当前应用的版本号(versionName)
     */
    public static String getVersion(Context context) {
        if (context != null) {
            try {
                PackageManager manager = context.getPackageManager();
                PackageInfo info = manager.getPackageInfo(context.getPackageName(), 0);

                return info.versionName;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return "";
    }

    public static void saveLong(Context context, String key, long value) {
        SharedPreferences.Editor editor = context.getSharedPreferences(
                SHARED_PREFERENCE_NAME, Context.MODE_PRIVATE).edit();
        editor.putLong(key, value);
        editor.commit();
    }

    public static long getLong(Context context, String key) {
        SharedPreferences shared = context.getSharedPreferences(SHARED_PREFERENCE_NAME, Context.MODE_PRIVATE);
        return shared.getLong(key, 0L);
    }
}
