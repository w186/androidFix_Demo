package com.financial.yixin;

import android.graphics.Canvas;
import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.Toast;

import com.lidong.pdf.PDFView;
import com.lidong.pdf.listener.OnDrawListener;
import com.lidong.pdf.listener.OnLoadCompleteListener;
import com.lidong.pdf.listener.OnPageChangeListener;
import com.taobao.sophix.SophixManager;

public class MainActivity extends AppCompatActivity implements OnPageChangeListener,OnLoadCompleteListener,OnDrawListener{

    private PDFView pdfview;
    private String fileUrl = "http://file.chmsp.com.cn/colligate/file/00100000224821.pdf";
    private String title = "00100000224821.pdf";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        pdfview = findViewById(R.id.pdfview);
        FloatingActionButton fab = findViewById(R.id.fab);
        fab.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
//                Snackbar.make(view, "Replace with your own action", Snackbar.LENGTH_LONG)
//                        .setAction("Action", null).show();
            }
        });
        disPlayFromFile(fileUrl,title);
    }

    private void disPlayFromFile(String fileUrl,String title){
        pdfview.fileFromLocalStorage(this,this,this,fileUrl,title);
    }

    @Override
    protected void onResume() {
        super.onResume();
        checkHotFix();
    }

    /**
     * 每一个小时检查一次热修复，在app崩溃之后，也会自动检查一次
     */
    private void checkHotFix() {
        long lastCheckTime = Utils.getLong(this, "lastCheckHotFix");
        if (System.currentTimeMillis() - lastCheckTime > 1000 * 60) {
            SophixManager.getInstance().queryAndLoadNewPatch();
            Utils.saveLong(this, "lastCheckHotFix", System.currentTimeMillis());
        }
    }

    @Override
    public void onPageChanged(int page, int pageCount) {
        Toast.makeText(this,page+"/"+pageCount,Toast.LENGTH_LONG).show();
    }

    @Override
    public void loadComplete(int nbPages) {

    }

    @Override
    public void onLayerDrawn(Canvas canvas, float pageWidth, float pageHeight, int displayedPage) {

    }
}
