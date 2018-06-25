package com.financial.yixin;

import android.app.Application;
import android.widget.Toast;

import com.taobao.sophix.PatchStatus;
import com.taobao.sophix.SophixManager;
import com.taobao.sophix.listener.PatchLoadStatusListener;
/**
 * Date:2018/6/20
 * Author: xingwang
 * Description:
 */
public class HotFixManager {

    public static void init(final Application application) {
        //热修复
        SophixManager.getInstance().setContext(application).setAppVersion(Utils.getVersion(application))
                .setEnableDebug(true).setPatchLoadStatusStub(new PatchLoadStatusListener() {
            @Override
            public void onLoad(int mode, int code, String info, int handlePatchVersion) {
                // 补丁加载回调通知
                if (isErrorCode(code)) {
                    Toast.makeText(application,parseCode(code),Toast.LENGTH_LONG).show();
                }
            }
        }).initialize();
    }

    private static String parseCode(int code) {
        switch (code) {
            case PatchStatus.CODE_REQ_START:
                return "准备中";
            case PatchStatus.CODE_LOAD_SUCCESS:
                return "补丁加载成功";
            case PatchStatus.CODE_ERR_NOTINIT:
                return "sdk初始化失败";
            case PatchStatus.CODE_ERR_NOTMAIN:
                return "需要在主进程执行";
            case PatchStatus.CODE_ERR_INBLACKLIST:
                return "当前设备不支持修补程序";
            case PatchStatus.CODE_REQ_ERR:
                return "获取补丁信息详细失败，请检查日志";
            case PatchStatus.CODE_REQ_NOUPDATE:
                return "没有新的补丁";
            case PatchStatus.CODE_REQ_NOTNEWEST:
                return "查询到的补丁版本小于当前加载版本";
            case PatchStatus.CODE_DOWNLOAD_FAIL:
            case PatchStatus.CODE_DOWNLOAD_SUCCESS:
                return "补丁下载成功";
            case PatchStatus.CODE_DOWNLOAD_BROKEN:
                return "补丁文件已损坏";
            case PatchStatus.CODE_UNZIP_FAIL:
                return "解压补丁出错";
            case PatchStatus.CODE_LOAD_RELAUNCH:
                return "新补丁生效需要重启";
            case PatchStatus.CODE_LOAD_FAIL:
                return "加载补丁失败";
            case PatchStatus.CODE_LOAD_NOPATCH:
                return "没有补丁文件可以加载";
            case PatchStatus.CODE_REQ_APPIDERR:
                return "appid不存在";
            case PatchStatus.CODE_REQ_SIGNERR:
                return "token过期,请检查APPSECRET";
            case PatchStatus.CODE_REQ_UNAVAIABLE:
                return "已经不可用";
            case PatchStatus.CODE_REQ_CLEARPATCH:
                return "清除当前已有补丁";
            case PatchStatus.CODE_REQ_TOOFAST:
                return "两个连续的请求不应短于3s";
            case PatchStatus.CODE_PATCH_INVAILD:
                return "补丁无效";
            default:
                return String.valueOf(code);
        }
    }

    private static boolean isErrorCode(int code) {
        switch (code) {
            case PatchStatus.CODE_ERR_NOTINIT:
            case PatchStatus.CODE_ERR_NOTMAIN:
            case PatchStatus.CODE_REQ_ERR:
            case PatchStatus.CODE_DOWNLOAD_BROKEN:
            case PatchStatus.CODE_UNZIP_FAIL:
            case PatchStatus.CODE_LOAD_FAIL:
            case PatchStatus.CODE_REQ_SIGNERR:
            case PatchStatus.CODE_REQ_APPIDERR:
            case PatchStatus.CODE_REQ_UNAVAIABLE:
                return true;
        }
        return false;
    }
}
