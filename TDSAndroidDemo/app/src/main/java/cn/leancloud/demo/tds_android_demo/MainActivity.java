package cn.leancloud.demo.tds_android_demo;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;

import com.tapsdk.bootstrap.TapBootstrap;
import com.tds.common.entities.TapConfig;
import com.tds.common.models.TapRegionType;

import cn.leancloud.LeanCloud;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
//        LeanCloud.initialize(this, "your-client-id", "your-client-token", "https://your_server_url");

        TapConfig tdsConfig = new TapConfig.Builder()
                .withAppContext(MainActivity.this) // Context 上下文
                .withClientId("thnveyid9a6a4rkph1") // 必须，开发者中心对应 Client ID
                .withClientToken("52Mw8eBBz8OwfJDCtisBQ5OUuFhIgzVBzPftSe7G") // 必须，开发者中心对应 Client Token
                .withServerUrl("https://thnveyid.cloud.tds1.tapapis.cn") // 必须，开发者中心 > 你的游戏 > 游戏服务 > 基本信息 > 域名配置 > API
                .withRegionType(TapRegionType.CN) // TapRegionType.CN：中国大陆，TapRegionType.IO：其他国家或地区
                .build();
        TapBootstrap.init(MainActivity.this, tdsConfig);

    }
}