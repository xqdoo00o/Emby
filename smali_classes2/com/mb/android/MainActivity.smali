.class public Lcom/mb/android/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field public static final ACTION_APPSHORTCUT:Ljava/lang/String; = "ACTION_APPSHORTCUT"

.field public static final ACTION_APP_READY:Ljava/lang/String; = "com.mb.android.ACTION_APP_READY"

.field public static final ACTION_APP_RESUME:Ljava/lang/String; = "com.mb.android.ACTION_APP_RESUME"

.field public static AppPackageName:Ljava/lang/String; = "com.mb.android"

.field private static final MIME_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHARE_RESULT:I = 0x3d4


# instance fields
.field private final AuthorizeStoragePermissionRequestCode:I

.field private final DownloadFileRequestCode:I

.field private final LAUNCH_REQUEST:I

.field private final PURCHASE_REQUEST:I

.field private _outerVideoFrame:Landroid/widget/FrameLayout;

.field private _videoManager:Lcom/mb/android/media/VideoManager;

.field private _videoPlayerFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field private _videoPlayerSurfaceView:Landroid/view/SurfaceView;

.field private appView:Lcom/mb/android/webviews/IWebView;

.field private chromecast:Lcom/mb/android/chromecast/Chromecast;

.field private currentProduct:Ltv/emby/iap/InAppProduct;

.field private downloadFilePath:Ljava/lang/String;

.field private downloadFileUrl:Ljava/lang/String;

.field private final embyAdminUrl:Ljava/lang/String;

.field private iapManager:Lcom/mb/android/iap/IapManager;

.field private immersiveMode:Z

.field private isPlaybackLocal:Z

.field private final jsMessageReceiver:Landroid/content/BroadcastReceiver;

.field private jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

.field private final mConnectionCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

.field private mHasVideo:Z

.field private mLastPlaybackState:I

.field private mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

.field private final mMediaControllerCallback:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

.field private mMediaServiceReceiver:Landroid/content/BroadcastReceiver;

.field private mainContainer:Landroid/view/ViewGroup;

.field private purchaseEmail:Ljava/lang/String;

.field private recommendationManager:Lcom/mb/android/media/tv/RecommendationManager;

.field private final startUrl:Ljava/lang/String;

.field private storageRequestCb:Ljava/lang/String;

.field private swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private syncSettingsBroadcastReceiver:Lcom/mb/android/sync/SyncSettingsBroadcastReceiver;

.field private voiceSearchParams:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 2024
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    .line 2026
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "3gp"

    const-string v2, "video/3gpp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2027
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "apk"

    const-string v2, "application/vnd.android.package-archive"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2028
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "asf"

    const-string v2, "video/x-ms-asf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2029
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "avi"

    const-string v2, "video/x-msvideo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2030
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "application/octet-stream"

    const-string v2, "bin"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v2, "bmp"

    const-string v3, "image/bmp"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2032
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v2, "text/plain"

    const-string v3, "c"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2033
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v3, "class"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2034
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v3, "conf"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2035
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v3, "cpp"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2036
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v3, "doc"

    const-string v4, "application/msword"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2037
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v3, "docx"

    const-string v4, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2038
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v3, "xls"

    const-string v4, "application/vnd.ms-excel"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2039
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v3, "xlsx"

    const-string v4, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2040
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v3, "exe"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2041
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "gif"

    const-string v3, "image/gif"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2042
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "gtar"

    const-string v3, "application/x-gtar"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2043
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "gz"

    const-string v3, "application/x-gzip"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2044
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "h"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2045
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "text/html"

    const-string v3, "htm"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2046
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v3, "html"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2047
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "jar"

    const-string v3, "application/java-archive"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2048
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "java"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2049
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "jpeg"

    const-string v3, "image/jpeg"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2050
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "jpg"

    const-string v3, "image/*"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2051
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "js"

    const-string v3, "application/x-javascript"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2052
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "log"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2053
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "m3u"

    const-string v3, "audio/x-mpegurl"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2054
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "audio/mp4a-latm"

    const-string v3, "m4a"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2055
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v3, "m4b"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2056
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v3, "m4p"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2057
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "m4u"

    const-string v3, "video/vnd.mpegurl"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2058
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "m4v"

    const-string v3, "video/x-m4v"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2059
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "mov"

    const-string v3, "video/quicktime"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2060
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "audio/x-mpeg"

    const-string v3, "mp2"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2061
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v3, "mp3"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2062
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "video/mp4"

    const-string v3, "mp4"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2063
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v3, "mpc"

    const-string v4, "application/vnd.mpohun.certificate"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2064
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v3, "video/mpeg"

    const-string v4, "mpe"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2065
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v4, "mpeg"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2066
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v4, "mpg"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2067
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v3, "mpg4"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2068
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "mpga"

    const-string v3, "audio/mpeg"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2069
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "msg"

    const-string v3, "application/vnd.ms-outlook"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2070
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "ogg"

    const-string v3, "audio/ogg"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2071
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "pdf"

    const-string v3, "application/pdf"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2072
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "png"

    const-string v3, "image/png"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2073
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "application/vnd.ms-powerpoint"

    const-string v3, "pps"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2074
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v3, "ppt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2075
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "pptx"

    const-string v3, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2076
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "prop"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2077
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "rc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2078
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "rmvb"

    const-string v3, "audio/x-pn-realaudio"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2079
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "rtf"

    const-string v3, "application/rtf"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2080
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "sh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2081
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "tar"

    const-string v3, "application/x-tar"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2082
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "tgz"

    const-string v3, "application/x-compressed"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2083
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2084
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "wav"

    const-string v3, "audio/x-wav"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2085
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "wma"

    const-string v3, "audio/x-ms-wma"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2086
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "wmv"

    const-string v3, "audio/x-ms-wmv"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2087
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "wps"

    const-string v3, "application/vnd.ms-works"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2088
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2089
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "z"

    const-string v2, "application/x-compress"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2090
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, "zip"

    const-string v2, "application/x-zip-compressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2091
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    const-string v1, ""

    const-string v2, "*/*"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 133
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x3e7

    .line 138
    iput v0, p0, Lcom/mb/android/MainActivity;->PURCHASE_REQUEST:I

    const/16 v0, 0x3de

    .line 139
    iput v0, p0, Lcom/mb/android/MainActivity;->LAUNCH_REQUEST:I

    const-string v0, "https://mb3admin.com/admin/service/"

    .line 141
    iput-object v0, p0, Lcom/mb/android/MainActivity;->embyAdminUrl:Ljava/lang/String;

    const/4 v0, 0x0

    .line 174
    iput v0, p0, Lcom/mb/android/MainActivity;->mLastPlaybackState:I

    const-string v0, "file:///android_asset/www/index.html"

    .line 176
    iput-object v0, p0, Lcom/mb/android/MainActivity;->startUrl:Ljava/lang/String;

    .line 526
    new-instance v0, Lcom/mb/android/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/mb/android/MainActivity$4;-><init>(Lcom/mb/android/MainActivity;)V

    iput-object v0, p0, Lcom/mb/android/MainActivity;->mMediaServiceReceiver:Landroid/content/BroadcastReceiver;

    .line 653
    new-instance v0, Lcom/mb/android/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/mb/android/MainActivity$5;-><init>(Lcom/mb/android/MainActivity;)V

    iput-object v0, p0, Lcom/mb/android/MainActivity;->mConnectionCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    .line 709
    new-instance v0, Lcom/mb/android/MainActivity$6;

    invoke-direct {v0, p0}, Lcom/mb/android/MainActivity$6;-><init>(Lcom/mb/android/MainActivity;)V

    iput-object v0, p0, Lcom/mb/android/MainActivity;->mMediaControllerCallback:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    .line 1210
    new-instance v0, Lcom/mb/android/MainActivity$10;

    invoke-direct {v0, p0}, Lcom/mb/android/MainActivity$10;-><init>(Lcom/mb/android/MainActivity;)V

    iput-object v0, p0, Lcom/mb/android/MainActivity;->jsMessageReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x4

    .line 1271
    iput v0, p0, Lcom/mb/android/MainActivity;->AuthorizeStoragePermissionRequestCode:I

    const/4 v0, 0x5

    .line 1272
    iput v0, p0, Lcom/mb/android/MainActivity;->DownloadFileRequestCode:I

    return-void
.end method

.method static synthetic access$000(Lcom/mb/android/MainActivity;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->requestApplyInsetsInternal()V

    return-void
.end method

.method static synthetic access$100(Lcom/mb/android/MainActivity;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/mb/android/MainActivity;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/mb/android/MainActivity;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->hidePlaybackControls()V

    return-void
.end method

.method static synthetic access$1102(Lcom/mb/android/MainActivity;I)I
    .locals 0

    .line 133
    iput p1, p0, Lcom/mb/android/MainActivity;->mLastPlaybackState:I

    return p1
.end method

.method static synthetic access$1200(Lcom/mb/android/MainActivity;)Z
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->shouldShowControls()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/mb/android/MainActivity;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->showPlaybackControls()V

    return-void
.end method

.method static synthetic access$1400(Lcom/mb/android/MainActivity;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->setWindowLayout()V

    return-void
.end method

.method static synthetic access$1500(Lcom/mb/android/MainActivity;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->setSystemUi()V

    return-void
.end method

.method static synthetic access$1600(Lcom/mb/android/MainActivity;Ltv/emby/iap/InAppProduct;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/mb/android/MainActivity;->purchaseInternal(Ltv/emby/iap/InAppProduct;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mb/android/MainActivity;)Lcom/mb/android/model/logging/ILogger;
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/mb/android/MainActivity;)Lcom/mb/android/model/serialization/IJsonSerializer;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/mb/android/MainActivity;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mb/android/MainActivity;Lcom/mb/android/model/dto/MediaSourceInfo;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/mb/android/MainActivity;->initVideoSurface(Lcom/mb/android/model/dto/MediaSourceInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mb/android/MainActivity;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->destroyVideoSurface()V

    return-void
.end method

.method static synthetic access$600(Lcom/mb/android/MainActivity;Landroid/content/Intent;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/mb/android/MainActivity;->handleFcmMessage(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mb/android/MainActivity;)Lcom/mb/android/webviews/IWebView;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/mb/android/MainActivity;->appView:Lcom/mb/android/webviews/IWebView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/mb/android/MainActivity;)Landroid/support/v4/media/MediaBrowserCompat;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/mb/android/MainActivity;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    return-object p0
.end method

.method static synthetic access$900(Lcom/mb/android/MainActivity;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1}, Lcom/mb/android/MainActivity;->connectToSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-void
.end method

.method private authorizeStorage(I)Z
    .locals 6

    .line 1332
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "authorizeStorage with requestCode %s"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1334
    invoke-direct {p0, v0}, Lcom/mb/android/MainActivity;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1337
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const-string v5, "Permission for WRITE_EXTERNAL_STORAGE is not granted"

    invoke-interface {v2, v5, v3}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1338
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "calling ActivityCompat.requestPermissions for WRITE_EXTERNAL_STORAGE"

    if-eqz v2, :cond_0

    .line 1343
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v5}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1344
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 1350
    :cond_0
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v5}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1351
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 1357
    :goto_0
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v2, "authorizeStorage returning true for async call"

    invoke-interface {p1, v2, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 1361
    :cond_1
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Permission for WRITE_EXTERNAL_STORAGE is granted"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1362
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "authorizeStorage returning false. No async call made."

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v4
.end method

.method private cleanupOldFiles(Ljava/io/File;)V
    .locals 3

    .line 1903
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 1905
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private connectToSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 688
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MediaSessionCompat.connectToSession"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 689
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 690
    invoke-static {p0, v0}, Landroid/support/v4/media/session/MediaControllerCompat;->setMediaController(Landroid/app/Activity;Landroid/support/v4/media/session/MediaControllerCompat;)V

    .line 691
    iget-object p1, p0, Lcom/mb/android/MainActivity;->mMediaControllerCallback:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 693
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->shouldShowControls()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 694
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->showPlaybackControls()V

    goto :goto_0

    .line 698
    :cond_0
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->hidePlaybackControls()V

    .line 705
    :goto_0
    invoke-virtual {p0}, Lcom/mb/android/MainActivity;->onMediaControllerConnected()V

    return-void
.end method

.method private createOrCleanDir(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1886
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1887
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1888
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1889
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "CREATE_DIRS_FAILED"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1892
    :cond_1
    invoke-direct {p0, v0}, Lcom/mb/android/MainActivity;->cleanupOldFiles(Ljava/io/File;)V

    :goto_0
    return-void
.end method

.method private createPullToRefresh()V
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/mb/android/MainActivity;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-nez v0, :cond_0

    return-void

    .line 479
    :cond_0
    new-instance v1, Lcom/mb/android/MainActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/mb/android/MainActivity$2;-><init>(Lcom/mb/android/MainActivity;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method private destroyVideoSurface()V
    .locals 4

    const/4 v0, 0x0

    .line 580
    iput-boolean v0, p0, Lcom/mb/android/MainActivity;->mHasVideo:Z

    .line 582
    iget-object v1, p0, Lcom/mb/android/MainActivity;->_videoManager:Lcom/mb/android/media/VideoManager;

    if-eqz v1, :cond_0

    .line 584
    :try_start_0
    invoke-virtual {v1}, Lcom/mb/android/media/VideoManager;->onVideoDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 587
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Error in videoManager.onVideoDestroy"

    invoke-interface {v2, v3, v1, v0}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 591
    :cond_0
    :goto_0
    new-instance v0, Lcom/mb/android/-$$Lambda$MainActivity$ESb8yTicXCDyTl5NPhIHSmR6IFc;

    invoke-direct {v0, p0}, Lcom/mb/android/-$$Lambda$MainActivity$ESb8yTicXCDyTl5NPhIHSmR6IFc;-><init>(Lcom/mb/android/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/mb/android/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private enterFullscreen()V
    .locals 3

    .line 917
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MainActivity.enterFullscreen"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 919
    new-instance v0, Lcom/mb/android/MainActivity$7;

    invoke-direct {v0, p0}, Lcom/mb/android/MainActivity$7;-><init>(Lcom/mb/android/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/mb/android/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private exitFullscreen()V
    .locals 3

    .line 967
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MainActivity.exitFullscreen"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 969
    new-instance v0, Lcom/mb/android/MainActivity$8;

    invoke-direct {v0, p0}, Lcom/mb/android/MainActivity$8;-><init>(Lcom/mb/android/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/mb/android/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getBytes(Ljava/io/InputStream;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2095
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x4000

    .line 2097
    new-array v1, v1, [B

    .line 2098
    :goto_0
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 2099
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 2101
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 2102
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private getDownloadDir()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1875
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/mb/android/MainActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/socialsharing-downloads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1878
    invoke-direct {p0, v0}, Lcom/mb/android/MainActivity;->createOrCleanDir(Ljava/lang/String;)V

    return-object v0

    :cond_0
    return-object v1
.end method

.method public static getFileForUri(Landroid/net/Uri;)Ljava/io/File;
    .locals 3
    .param p0    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1057
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    const/16 v1, 0x2f

    .line 1058
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1059
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v1, v0

    .line 1060
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "root"

    .line 1062
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1068
    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1070
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1072
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1077
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1078
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Resolved path jumped beyond configured root"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1074
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to resolve canonical path for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1063
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const-string v1, "Can\'t decode paths to \'%s\', only for \'root\' paths."

    .line 1064
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "/"

    .line 1990
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1991
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, ".*/([^?#]+)?"

    .line 1994
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1995
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1996
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1997
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "file"

    return-object p0
.end method

.method private getFileUriAndSetType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p5

    const-string v5, "mp4"

    .line 1912
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "mov"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "3gp"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, "image/*"

    .line 1915
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    :goto_0
    const-string v5, "video/*"

    .line 1913
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const-string v5, "http"

    .line 1918
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "file"

    const/4 v8, 0x1

    const-string v9, ""

    const-string v10, "/"

    const-string v11, "file://"

    if-nez v6, :cond_c

    const-string v6, "www/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_5

    :cond_2
    const-string v5, "data:"

    .line 1941
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "text/plain"

    const-string v15, ";base64,"

    if-eqz v6, :cond_8

    .line 1943
    invoke-virtual {v3, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1944
    invoke-virtual {v1, v14}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object v13

    .line 1948
    :cond_3
    invoke-virtual {v3, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v13, "data:image/"

    .line 1950
    invoke-virtual {v3, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    const-string v14, ";base64"

    if-nez v13, :cond_4

    .line 1951
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v3, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1954
    :cond_4
    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1958
    invoke-static/range {p4 .. p4}, Lcom/mb/android/MainActivity;->notEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1959
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p4 .. p4}, Lcom/mb/android/MainActivity;->sanitizeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 1961
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_3
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1963
    :goto_4
    invoke-static {v6, v12}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v0, v3, v2, v1}, Lcom/mb/android/MainActivity;->saveFile([BLjava/lang/String;Ljava/lang/String;)V

    .line 1964
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_7

    :cond_8
    const-string v4, "df:"

    .line 1965
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1967
    invoke-virtual {v3, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1968
    invoke-virtual {v1, v14}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object v13

    .line 1972
    :cond_9
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    const-string v5, ";data:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1973
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x6

    invoke-virtual {v3, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1974
    invoke-virtual {v3, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1975
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1976
    invoke-static {v3, v12}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {v4}, Lcom/mb/android/MainActivity;->sanitizeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/mb/android/MainActivity;->saveFile([BLjava/lang/String;Ljava/lang/String;)V

    .line 1977
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_7

    .line 1978
    :cond_a
    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1982
    invoke-direct {v0, v3}, Lcom/mb/android/MainActivity;->getMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1984
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-object v1, v3

    goto/16 :goto_7

    .line 1979
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "URL_NOT_SUPPORTED"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1919
    :cond_c
    :goto_5
    invoke-static/range {p3 .. p3}, Lcom/mb/android/MainActivity;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1920
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1921
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1923
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    const-string v5, "Content-Disposition"

    .line 1924
    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    const-string v6, "filename=([^;]+)"

    .line 1926
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 1927
    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 1928
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1929
    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "[^a-zA-Z0-9._-]"

    invoke-virtual {v1, v4, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1930
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_d

    move-object v1, v7

    .line 1934
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1937
    :cond_e
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/mb/android/MainActivity;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-direct {v0, v3, v2, v1}, Lcom/mb/android/MainActivity;->saveFile([BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1939
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/mb/android/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/mb/android/MainActivity;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-direct {v0, v3, v2, v1}, Lcom/mb/android/MainActivity;->saveFile([BLjava/lang/String;Ljava/lang/String;)V

    :goto_6
    move-object v1, v4

    .line 1986
    :goto_7
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private getLogger()Lcom/mb/android/model/logging/ILogger;
    .locals 1

    .line 151
    invoke-static {p0}, Lcom/mb/android/logging/AppLogger;->getLogger(Landroid/content/Context;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    return-object v0
.end method

.method private getMIMEType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "."

    .line 2016
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "*/*"

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 2020
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2021
    sget-object v0, Lcom/mb/android/MainActivity;->MIME_Map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    move-object p1, v1

    :cond_1
    return-object p1
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 0

    .line 1763
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private handleFcmMessage(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "msg"

    .line 558
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 559
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "require([\'connectionManager\'], function(connectionManager){connectionManager.handleMessageReceived(%s);});"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 560
    invoke-virtual {p0, p1}, Lcom/mb/android/MainActivity;->RespondToWebView(Ljava/lang/String;)V

    return-void
.end method

.method private handlePlayItem(Landroid/content/Intent;)V
    .locals 3

    .line 808
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mb.android.ACTION_START_PLAYBACK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "serverId"

    .line 811
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "itemId"

    .line 812
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 816
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "require([\'playbackManager\'], function(playbackManager) {playbackManager.play({fullscreen: true,serverId: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\',ids: [\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'],});});"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mb/android/MainActivity;->RespondToWebView(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleStartFromVoiceSearch(Landroid/content/Intent;)V
    .locals 2

    .line 829
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "reportEvents"

    .line 833
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 835
    invoke-static {p0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMediaController(Landroid/app/Activity;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 837
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    const-string v1, "query"

    .line 839
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 840
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 843
    :cond_1
    iput-object p1, p0, Lcom/mb/android/MainActivity;->voiceSearchParams:Landroid/os/Bundle;

    :goto_0
    return-void
.end method

.method private handleViewItem(Landroid/content/Intent;)V
    .locals 3

    .line 790
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 794
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    .line 795
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    return-void

    .line 798
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 799
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "require([\'appRouter\'], function(appRouter) {appRouter.showItem(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\',\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');});"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mb/android/MainActivity;->RespondToWebView(Ljava/lang/String;)V

    return-void
.end method

.method private hidePlaybackControls()V
    .locals 0

    return-void
.end method

.method private initSystemUi()V
    .locals 2

    .line 352
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->setSystemUi()V

    .line 354
    iget-object v0, p0, Lcom/mb/android/MainActivity;->mainContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/mb/android/-$$Lambda$MainActivity$hIKf0ozOOsQWlLIYbx6W-_wqdCE;

    invoke-direct {v1, p0}, Lcom/mb/android/-$$Lambda$MainActivity$hIKf0ozOOsQWlLIYbx6W-_wqdCE;-><init>(Lcom/mb/android/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private initVideoSurface(Lcom/mb/android/model/dto/MediaSourceInfo;)V
    .locals 4

    .line 565
    invoke-virtual {p0}, Lcom/mb/android/MainActivity;->ensureVideoManager()Lcom/mb/android/media/VideoManager;

    const/4 v0, 0x1

    .line 566
    iput-boolean v0, p0, Lcom/mb/android/MainActivity;->mHasVideo:Z

    .line 568
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/MainActivity;->_videoManager:Lcom/mb/android/media/VideoManager;

    iget-object v1, p0, Lcom/mb/android/MainActivity;->_videoPlayerSurfaceView:Landroid/view/SurfaceView;

    iget-object v2, p0, Lcom/mb/android/MainActivity;->_videoPlayerFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v3, p0, Lcom/mb/android/MainActivity;->_outerVideoFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/mb/android/media/VideoManager;->onBeforePlayVideo(Landroid/view/SurfaceView;Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/widget/FrameLayout;Lcom/mb/android/model/dto/MediaSourceInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 575
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error in videoManager.onBeforePlayVideo"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private isIntentDeepLink(Landroid/content/Intent;)Z
    .locals 3

    .line 779
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 783
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "emby"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 786
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    const-string v0, "items"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isPermissionGranted(Ljava/lang/String;)Z
    .locals 0

    .line 1367
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isPlayingOnExternalOrHeadphones()Z
    .locals 8

    const-string v0, "audio"

    .line 637
    invoke-virtual {p0, v0}, Lcom/mb/android/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 638
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x17

    if-lt v1, v3, :cond_2

    const/4 v1, 0x2

    .line 639
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 640
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v0, v5

    .line 641
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v7

    if-eq v7, v1, :cond_0

    .line 642
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    if-eq v6, v2, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v4

    .line 648
    :cond_2
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    xor-int/2addr v0, v2

    return v0
.end method

.method private logExternalPaths()V
    .locals 10

    .line 440
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 446
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/mb/android/MainActivity;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_2

    aget-object v5, v0, v3

    if-nez v5, :cond_1

    goto :goto_1

    .line 452
    :cond_1
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v6

    const-string v7, "External dir: %s isExternalStorageEmulated: %s isExternalStorageRemovable: %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 453
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    .line 454
    invoke-static {v5}, Landroid/os/Environment;->isExternalStorageEmulated(Ljava/io/File;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v4, 0x2

    .line 455
    invoke-static {v5}, Landroid/os/Environment;->isExternalStorageRemovable(Ljava/io/File;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v8, v4

    .line 452
    invoke-interface {v6, v7, v8}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 458
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 460
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v2

    const-string v3, "Environment.getExternalStorageDirectory: %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 463
    :cond_3
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const-string v2, "Environment.getExternalStorageDirectory: null"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 467
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Error in logExternalPaths"

    invoke-interface {v2, v3, v0, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method private makeWebView()V
    .locals 3

    .line 1008
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    .line 1010
    new-instance v1, Lcom/mb/android/webviews/NativeWebView;

    iget-object v2, p0, Lcom/mb/android/MainActivity;->mainContainer:Landroid/view/ViewGroup;

    invoke-direct {v1, p0, v0, p0, v2}, Lcom/mb/android/webviews/NativeWebView;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/MainActivity;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/mb/android/MainActivity;->appView:Lcom/mb/android/webviews/IWebView;

    .line 1012
    new-instance v1, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;

    invoke-direct {v1}, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;-><init>()V

    iput-object v1, p0, Lcom/mb/android/MainActivity;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    .line 1014
    new-instance v1, Lcom/mb/android/iap/IapManager;

    iget-object v2, p0, Lcom/mb/android/MainActivity;->appView:Lcom/mb/android/webviews/IWebView;

    invoke-direct {v1, p0, v2, v0}, Lcom/mb/android/iap/IapManager;-><init>(Landroid/content/Context;Lcom/mb/android/webviews/IWebView;Lcom/mb/android/model/logging/ILogger;)V

    iput-object v1, p0, Lcom/mb/android/MainActivity;->iapManager:Lcom/mb/android/iap/IapManager;

    return-void
.end method

.method private static notEmpty(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, ""

    .line 2009
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    .line 2010
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "undefined"

    .line 2011
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private purchaseInternal(Ltv/emby/iap/InAppProduct;)V
    .locals 5

    const/4 v0, 0x0

    .line 1185
    :try_start_0
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v1

    const-string v2, "purchaseInternal sku: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ltv/emby/iap/InAppProduct;->getSku()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-interface {v1, v2, v3}, Lcom/mb/android/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1187
    iput-object p1, p0, Lcom/mb/android/MainActivity;->currentProduct:Ltv/emby/iap/InAppProduct;

    .line 1189
    new-instance v1, Lcom/mb/android/iap/IapLogger;

    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mb/android/iap/IapLogger;-><init>(Lcom/mb/android/model/logging/ILogger;)V

    sput-object v1, Ltv/emby/iap/PurchaseActivity;->Logger:Ltv/emby/iap/ILogger;

    .line 1191
    new-instance v1, Landroid/content/Intent;

    const-class v2, Ltv/emby/iap/PurchaseActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "googleKey"

    const-string v3, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAk4MSP7wxlKaJwF066w7qQ+FvttXc+uSvUI5a+Lq+TT74Y1LTp0qg1+WRqou78WRK5cdfCr2m1N4LqttmYFfsWG/DBon98+ZFtaUbiP+Nx29YCkawE06hMyn0pONw/FnXB90mm0vGl7+fkpdYoUx1pit2DGoQweAZwmilW2jfPdi+YloSbX3SJlTXcgZIoAzIvY+qOinyuWIaRda5YcDfvson2yQC6XQOYqQ4ZOKhQxCSzaaQp3dLMCXlKPpsQNzFpVQsHLt4OntBMPkK3e/RxTE9AyhQYxofEzdKg/MHz1c3vCFIJCkzPy1cstwYMcjktRoLGgPHjxW60Iq9+USjfwIDAQAB"

    .line 1192
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sku"

    .line 1193
    invoke-virtual {p1}, Ltv/emby/iap/InAppProduct;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x3e7

    .line 1194
    invoke-virtual {p0, v1, p1}, Lcom/mb/android/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1197
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Error launching activity"

    invoke-interface {v1, v2, p1, v0}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const-string p1, "window.IapManager.onPurchaseComplete(false);"

    .line 1198
    invoke-virtual {p0, p1}, Lcom/mb/android/MainActivity;->RespondToWebView(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private requestApplyInsetsInternal()V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/mb/android/MainActivity;->mainContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestApplyInsets()V

    return-void
.end method

.method public static sanitizeFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "[:\\\\/*?|<> ]"

    const-string v1, "_"

    .line 2004
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private saveFile([BLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2106
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2107
    new-instance p2, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2108
    invoke-virtual {p2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 2109
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 2110
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method private setBody(Ljava/lang/String;Ljava/lang/Boolean;Landroid/content/Intent;)V
    .locals 0

    .line 1626
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.extra.TEXT"

    .line 1634
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "text/plain"

    .line 1635
    invoke-virtual {p3, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method private setRecipients(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    .line 1641
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "android.intent.extra.EMAIL"

    .line 1645
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method private setSubject(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "android.intent.extra.SUBJECT"

    .line 1611
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method private setSystemUi()V
    .locals 2

    .line 422
    iget-boolean v0, p0, Lcom/mb/android/MainActivity;->immersiveMode:Z

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/mb/android/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/mb/android/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method private setWindowLayout()V
    .locals 4

    .line 336
    invoke-virtual {p0}, Lcom/mb/android/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 338
    iget-boolean v1, p0, Lcom/mb/android/MainActivity;->immersiveMode:Z

    const/high16 v2, -0x80000000

    const/16 v3, 0x400

    if-eqz v1, :cond_0

    .line 339
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 340
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 342
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 343
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    const/4 v1, 0x0

    .line 346
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 347
    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method private shouldShowControls()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private showPlaybackControls()V
    .locals 0

    return-void
.end method


# virtual methods
.method public RespondToWebView(Ljava/lang/String;)V
    .locals 1

    .line 1205
    iget-object v0, p0, Lcom/mb/android/MainActivity;->appView:Lcom/mb/android/webviews/IWebView;

    if-eqz v0, :cond_0

    .line 1206
    invoke-interface {v0, p1}, Lcom/mb/android/webviews/IWebView;->sendJavaScript(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public addJavascriptInterfaces(Lcom/mb/android/apiinteraction/android/ConnectionManager;)V
    .locals 4

    .line 1020
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    .line 1022
    iget-object v1, p0, Lcom/mb/android/MainActivity;->appView:Lcom/mb/android/webviews/IWebView;

    iget-object v2, p0, Lcom/mb/android/MainActivity;->iapManager:Lcom/mb/android/iap/IapManager;

    const-string v3, "NativeIapManager"

    invoke-interface {v1, v2, v3}, Lcom/mb/android/webviews/IWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1023
    iget-object v1, p0, Lcom/mb/android/MainActivity;->appView:Lcom/mb/android/webviews/IWebView;

    const-string v2, "MainActivity"

    invoke-interface {v1, p0, v2}, Lcom/mb/android/webviews/IWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1024
    iget-object v1, p0, Lcom/mb/android/MainActivity;->appView:Lcom/mb/android/webviews/IWebView;

    new-instance v2, Lcom/mb/android/media/MediaPlayerBridge;

    invoke-direct {v2, v0, p0}, Lcom/mb/android/media/MediaPlayerBridge;-><init>(Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/MainActivity;)V

    const-string v3, "AndroidVlcPlayer"

    invoke-interface {v1, v2, v3}, Lcom/mb/android/webviews/IWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1026
    iget-object v1, p0, Lcom/mb/android/MainActivity;->appView:Lcom/mb/android/webviews/IWebView;

    new-instance v2, Lcom/mb/android/sync/AndroidSync;

    invoke-direct {v2, v0, p0}, Lcom/mb/android/sync/AndroidSync;-><init>(Lcom/mb/android/model/logging/ILogger;Landroid/content/Context;)V

    const-string v3, "AndroidSync"

    invoke-interface {v1, v2, v3}, Lcom/mb/android/webviews/IWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1027
    iget-object v1, p0, Lcom/mb/android/MainActivity;->appView:Lcom/mb/android/webviews/IWebView;

    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/android/ConnectionManager;->getCredentialManager()Lcom/mb/android/apiinteraction/android/AndroidCredentialManager;

    move-result-object p1

    const-string v2, "AndroidCredentialManager"

    invoke-interface {v1, p1, v2}, Lcom/mb/android/webviews/IWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1029
    iget-object p1, p0, Lcom/mb/android/MainActivity;->appView:Lcom/mb/android/webviews/IWebView;

    new-instance v1, Lcom/mb/android/networking/WakeOnLan;

    invoke-direct {v1}, Lcom/mb/android/networking/WakeOnLan;-><init>()V

    const-string v2, "AndroidWakeOnLan"

    invoke-interface {p1, v1, v2}, Lcom/mb/android/webviews/IWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1030
    iget-object p1, p0, Lcom/mb/android/MainActivity;->appView:Lcom/mb/android/webviews/IWebView;

    new-instance v1, Lcom/mb/android/sync/CameraRoll;

    invoke-direct {v1, p0}, Lcom/mb/android/sync/CameraRoll;-><init>(Landroid/content/Context;)V

    const-string v2, "AndroidCameraRoll"

    invoke-interface {p1, v1, v2}, Lcom/mb/android/webviews/IWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1031
    iget-object p1, p0, Lcom/mb/android/MainActivity;->appView:Lcom/mb/android/webviews/IWebView;

    new-instance v1, Lcom/mb/android/ShortcutHelper;

    iget-object v2, p0, Lcom/mb/android/MainActivity;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    invoke-direct {v1, p0, v2}, Lcom/mb/android/ShortcutHelper;-><init>(Landroid/content/Context;Lcom/mb/android/model/serialization/IJsonSerializer;)V

    const-string v2, "ShortcutHelper"

    invoke-interface {p1, v1, v2}, Lcom/mb/android/webviews/IWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1033
    new-instance p1, Lcom/mb/android/sync/data/AndroidFileRepository;

    invoke-direct {p1, p0, v0}, Lcom/mb/android/sync/data/AndroidFileRepository;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V

    .line 1034
    iget-object v1, p0, Lcom/mb/android/MainActivity;->appView:Lcom/mb/android/webviews/IWebView;

    const-string v2, "AndroidFileRepository"

    invoke-interface {v1, p1, v2}, Lcom/mb/android/webviews/IWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1035
    iget-object p1, p0, Lcom/mb/android/MainActivity;->appView:Lcom/mb/android/webviews/IWebView;

    new-instance v1, Lcom/mb/android/sync/AppSettings;

    invoke-direct {v1, p0}, Lcom/mb/android/sync/AppSettings;-><init>(Landroid/content/Context;)V

    const-string v2, "AndroidAppSettings"

    invoke-interface {p1, v1, v2}, Lcom/mb/android/webviews/IWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1036
    iget-object p1, p0, Lcom/mb/android/MainActivity;->appView:Lcom/mb/android/webviews/IWebView;

    new-instance v1, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;

    iget-object v2, p0, Lcom/mb/android/MainActivity;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/model/serialization/IJsonSerializer;Lcom/mb/android/webviews/ISendJavaScript;)V

    const-string v2, "AndroidLocalDatabase"

    invoke-interface {p1, v1, v2}, Lcom/mb/android/webviews/IWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1038
    new-instance p1, Lcom/mb/android/chromecast/Chromecast;

    iget-object v1, p0, Lcom/mb/android/MainActivity;->appView:Lcom/mb/android/webviews/IWebView;

    invoke-direct {p1, p0, v1, v0}, Lcom/mb/android/chromecast/Chromecast;-><init>(Landroid/app/Activity;Lcom/mb/android/webviews/ISendJavaScript;Lcom/mb/android/model/logging/ILogger;)V

    iput-object p1, p0, Lcom/mb/android/MainActivity;->chromecast:Lcom/mb/android/chromecast/Chromecast;

    .line 1039
    iget-object p1, p0, Lcom/mb/android/MainActivity;->appView:Lcom/mb/android/webviews/IWebView;

    iget-object v1, p0, Lcom/mb/android/MainActivity;->chromecast:Lcom/mb/android/chromecast/Chromecast;

    const-string v2, "AndroidChromecast"

    invoke-interface {p1, v1, v2}, Lcom/mb/android/webviews/IWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1040
    iget-object p1, p0, Lcom/mb/android/MainActivity;->appView:Lcom/mb/android/webviews/IWebView;

    new-instance v1, Lcom/mb/android/AndroidAppHost;

    invoke-direct {v1, p0, v0}, Lcom/mb/android/AndroidAppHost;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V

    const-string v0, "AndroidAppHost"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/webviews/IWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1041
    iget-object p1, p0, Lcom/mb/android/MainActivity;->appView:Lcom/mb/android/webviews/IWebView;

    new-instance v0, Lcom/mb/android/media/MediaCodecCapabilities;

    invoke-direct {v0}, Lcom/mb/android/media/MediaCodecCapabilities;-><init>()V

    const-string v1, "CodecCapabilities"

    invoke-interface {p1, v0, v1}, Lcom/mb/android/webviews/IWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public authorizeStorage()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    .line 1306
    invoke-virtual {p0, v0}, Lcom/mb/android/MainActivity;->authorizeStorage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public authorizeStorage(Ljava/lang/String;)Z
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1312
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "begin authorizeStorage"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 1313
    invoke-direct {p0, v0}, Lcom/mb/android/MainActivity;->authorizeStorage(I)Z

    move-result v0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1314
    invoke-direct {p0, v2}, Lcom/mb/android/MainActivity;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v2

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    .line 1317
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v1

    const-string v5, "authorizeStorage callback %s"

    invoke-interface {v0, v5, v4}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 1318
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "%s(%s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mb/android/MainActivity;->RespondToWebView(Ljava/lang/String;)V

    goto :goto_0

    .line 1321
    :cond_0
    iput-object p1, p0, Lcom/mb/android/MainActivity;->storageRequestCb:Ljava/lang/String;

    :cond_1
    :goto_0
    return v2
.end method

.method public beginPurchase(Ltv/emby/iap/InAppProduct;Ljava/lang/String;)V
    .locals 4

    .line 1142
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "beginning purchase"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1143
    iput-object p2, p0, Lcom/mb/android/MainActivity;->purchaseEmail:Ljava/lang/String;

    .line 1145
    invoke-virtual {p1}, Ltv/emby/iap/InAppProduct;->requiresEmail()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_1

    .line 1147
    :cond_0
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Aborting beginPurchase because purchaseEmail is required."

    invoke-interface {p1, v0, p2}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1151
    :cond_1
    invoke-virtual {p1}, Ltv/emby/iap/InAppProduct;->getEmbyFeatureCode()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1154
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Testing back-end connectivity."

    invoke-interface {p2, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1156
    new-instance p2, Lcom/mb/android/apiinteraction/http/HttpRequest;

    invoke-direct {p2}, Lcom/mb/android/apiinteraction/http/HttpRequest;-><init>()V

    const-string v0, "https://mb3admin.com/admin/service/appstore/check"

    .line 1157
    invoke-virtual {p2, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    .line 1158
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Lcom/mb/android/MainActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/mb/android/MainActivity$9;-><init>(Lcom/mb/android/MainActivity;Ltv/emby/iap/InAppProduct;)V

    invoke-static {p0, p2, v0, v1}, Lcom/mb/android/apiinteraction/RequestHelper;->getString(Landroid/content/Context;Lcom/mb/android/apiinteraction/http/HttpRequest;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/apiinteraction/Response;)V

    goto :goto_0

    .line 1177
    :cond_2
    invoke-direct {p0, p1}, Lcom/mb/android/MainActivity;->purchaseInternal(Ltv/emby/iap/InAppProduct;)V

    :goto_0
    return-void
.end method

.method protected createViews()V
    .locals 4

    .line 849
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mb/android/MainActivity;->mainContainer:Landroid/view/ViewGroup;

    .line 850
    iget-object v0, p0, Lcom/mb/android/MainActivity;->mainContainer:Landroid/view/ViewGroup;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 852
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 853
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mb/android/MainActivity;->_outerVideoFrame:Landroid/widget/FrameLayout;

    .line 854
    iget-object v2, p0, Lcom/mb/android/MainActivity;->mainContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/mb/android/MainActivity;->_outerVideoFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 856
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mb/android/MainActivity;->_videoPlayerSurfaceView:Landroid/view/SurfaceView;

    .line 857
    new-instance v0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mb/android/MainActivity;->_videoPlayerFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 858
    iget-object v0, p0, Lcom/mb/android/MainActivity;->_videoPlayerFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setBackgroundColor(I)V

    .line 859
    iget-object v0, p0, Lcom/mb/android/MainActivity;->_videoPlayerFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v1, p0, Lcom/mb/android/MainActivity;->_videoPlayerSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;)V

    .line 861
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 862
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 863
    iget-object v1, p0, Lcom/mb/android/MainActivity;->_outerVideoFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/mb/android/MainActivity;->_videoPlayerFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 865
    iget-object v0, p0, Lcom/mb/android/MainActivity;->mainContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/mb/android/MainActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1651
    iput-object p1, p0, Lcom/mb/android/MainActivity;->downloadFileUrl:Ljava/lang/String;

    .line 1652
    iput-object p2, p0, Lcom/mb/android/MainActivity;->downloadFilePath:Ljava/lang/String;

    const/4 v0, 0x5

    .line 1654
    invoke-direct {p0, v0}, Lcom/mb/android/MainActivity;->authorizeStorage(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1658
    :cond_0
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "Downloading file %s"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "download"

    if-eqz p2, :cond_1

    .line 1661
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1662
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0x5c

    .line 1665
    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    add-int/2addr v2, v1

    .line 1667
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v0

    .line 1671
    :cond_2
    :goto_0
    new-instance v2, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 1674
    sget-object p1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v2, p1, p2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 1678
    invoke-virtual {v2}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 1682
    invoke-virtual {v2, v1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 1685
    invoke-virtual {p0, v0}, Lcom/mb/android/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    .line 1686
    invoke-virtual {p1, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    return-void
.end method

.method public ensureVideoManager()Lcom/mb/android/media/VideoManager;
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/mb/android/MainActivity;->_videoManager:Lcom/mb/android/media/VideoManager;

    if-nez v0, :cond_0

    .line 516
    new-instance v0, Lcom/mb/android/media/VideoManager;

    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mb/android/media/VideoManager;-><init>(Lcom/mb/android/MainActivity;Lcom/mb/android/model/logging/ILogger;)V

    iput-object v0, p0, Lcom/mb/android/MainActivity;->_videoManager:Lcom/mb/android/media/VideoManager;

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/mb/android/MainActivity;->_videoManager:Lcom/mb/android/media/VideoManager;

    return-object v0
.end method

.method public exitApp()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x1

    .line 1476
    invoke-virtual {p0, v0}, Lcom/mb/android/MainActivity;->moveTaskToBack(Z)Z

    .line 1477
    invoke-virtual {p0}, Lcom/mb/android/MainActivity;->finishAndRemoveTask()V

    return-void
.end method

.method public findServers(I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1796
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mb/android/MainActivity$13;

    invoke-direct {v1, p0, p1}, Lcom/mb/android/MainActivity$13;-><init>(Lcom/mb/android/MainActivity;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1816
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getDraftWithProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1591
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1593
    invoke-direct {p0, p2, v0}, Lcom/mb/android/MainActivity;->setSubject(Ljava/lang/String;Landroid/content/Intent;)V

    const/4 p2, 0x0

    .line 1594
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p3, p2, v0}, Lcom/mb/android/MainActivity;->setBody(Ljava/lang/String;Ljava/lang/Boolean;Landroid/content/Intent;)V

    .line 1595
    invoke-direct {p0, p1, v0}, Lcom/mb/android/MainActivity;->setRecipients(Ljava/lang/String;Landroid/content/Intent;)V

    const/high16 p1, 0x10000000

    .line 1597
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public getIsPlaybackLocal()Z
    .locals 1

    .line 1372
    iget-boolean v0, p0, Lcom/mb/android/MainActivity;->isPlaybackLocal:Z

    return v0
.end method

.method public getVideoManager()Lcom/mb/android/media/VideoManager;
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/mb/android/MainActivity;->_videoManager:Lcom/mb/android/media/VideoManager;

    return-object v0
.end method

.method public handleSslError(Landroid/net/http/SslError;Lcom/mb/android/apiinteraction/Response;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/http/SslError;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1692
    new-instance v2, Lcom/mb/android/sync/AppSettings;

    invoke-direct {v2, p0}, Lcom/mb/android/sync/AppSettings;-><init>(Landroid/content/Context;)V

    .line 1693
    invoke-virtual {p1}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v6

    .line 1697
    :try_start_0
    new-instance v0, Lcom/mb/android/networking/CertificateManager;

    invoke-direct {v0, p0}, Lcom/mb/android/networking/CertificateManager;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1699
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    .line 1703
    invoke-virtual {v6}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v0

    .line 1704
    invoke-virtual {v6}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v1

    .line 1705
    invoke-virtual {v6}, Landroid/net/http/SslCertificate;->getValidNotBeforeDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1707
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "--"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1708
    invoke-virtual {v2, p0}, Lcom/mb/android/sync/AppSettings;->getAceptedCertificates(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 1710
    invoke-static {p1, v4}, Lcom/mb/android/model/extensions/StringHelper;->IndexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    const/4 p1, 0x1

    .line 1711
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mb/android/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    if-eqz v5, :cond_0

    .line 1714
    :try_start_1
    invoke-virtual {v5, v4, v6}, Lcom/mb/android/networking/CertificateManager;->storeSSLCertificate(Ljava/lang/String;Landroid/net/http/SslCertificate;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1716
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    return-void

    .line 1722
    :cond_1
    invoke-virtual {p0}, Lcom/mb/android/MainActivity;->isFinishing()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 p1, 0x0

    .line 1723
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mb/android/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void

    .line 1727
    :cond_2
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1729
    invoke-virtual {p0}, Lcom/mb/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f1200dc

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "Emby Server"

    const-string v10, "localhost"

    .line 1730
    invoke-virtual {v0, v10, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "{0}"

    invoke-virtual {v7, v11, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1731
    invoke-virtual {v1, v10, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "{1}"

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{2}"

    .line 1732
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1734
    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v9, 0x104000a

    .line 1735
    new-instance v10, Lcom/mb/android/MainActivity$11;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/mb/android/MainActivity$11;-><init>(Lcom/mb/android/MainActivity;Lcom/mb/android/sync/AppSettings;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/networking/CertificateManager;Landroid/net/http/SslCertificate;Lcom/mb/android/apiinteraction/Response;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    .line 1751
    new-instance v0, Lcom/mb/android/MainActivity$12;

    invoke-direct {v0, p0, p2}, Lcom/mb/android/MainActivity$12;-><init>(Lcom/mb/android/MainActivity;Lcom/mb/android/apiinteraction/Response;)V

    invoke-virtual {v8, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1757
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1758
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public hideMediaSession()V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1234
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mb/android/media/MediaService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.example.android.uamp.ACTION_CMD"

    .line 1235
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CMD_NAME"

    const-string v2, "com.example.android.uamp.ACTION_REPORT_REMOTE_PLAYBACK_STOPPED"

    .line 1237
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1239
    invoke-virtual {p0, v0}, Lcom/mb/android/MainActivity;->tryStartService(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1242
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Error in hideMediaSession"

    invoke-interface {v1, v3, v0, v2}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public isPictureInPictureEnabled()Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1495
    invoke-virtual {p0}, Lcom/mb/android/MainActivity;->isPictureInPictureSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 1496
    invoke-virtual {p0}, Lcom/mb/android/MainActivity;->isInPictureInPictureMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPictureInPictureSupported()Z
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1483
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 1486
    invoke-virtual {p0}, Lcom/mb/android/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.software.picture_in_picture"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "google"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public synthetic lambda$destroyVideoSurface$2$MainActivity()V
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/mb/android/MainActivity;->_videoPlayerFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v1, p0, Lcom/mb/android/MainActivity;->_videoPlayerSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initSystemUi$0$MainActivity(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 11

    .line 356
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p1

    .line 357
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    .line 358
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    .line 359
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 361
    iget-boolean v3, p0, Lcom/mb/android/MainActivity;->immersiveMode:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 368
    :cond_0
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v3

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x2

    aput-object v7, v6, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x3

    aput-object v7, v6, v10

    const-string v7, "setOnApplyWindowInsetsListener Window %s %s %s %s"

    invoke-interface {v3, v7, v6}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v10

    const-string p1, "if (self.onWindowInsetChanged){onWindowInsetChanged(%s, %s, %s, %s);}"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mb/android/MainActivity;->RespondToWebView(Ljava/lang/String;)V

    return-object p2
.end method

.method public synthetic lambda$onAppReady$1$MainActivity(Landroid/content/Intent;)V
    .locals 0

    .line 396
    invoke-direct {p0, p1}, Lcom/mb/android/MainActivity;->handleFcmMessage(Landroid/content/Intent;)V

    return-void
.end method

.method public launchIntent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 16

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v14, "title"

    move-object/from16 v0, p3

    invoke-virtual {v2, v14, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "return_result"

    const/4 v15, 0x1

    invoke-virtual {v2, v14, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_66

    const-string v14, ","

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v5, v10

    new-array v11, v5, [Landroid/net/Uri;

    new-array v9, v5, [Ljava/lang/String;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_2b
    array-length v14, v10

    if-ge v3, v14, :cond_4e

    aget-object v14, v10, v3

    const-string v15, "#"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x0

    aget-object v14, v6, v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    aput-object v13, v11, v3

    const/4 v14, 0x1

    aget-object v14, v6, v14

    aput-object v14, v9, v3

    array-length v14, v6

    const/4 v15, 0x3

    if-ne v14, v15, :cond_4b

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_4e
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v7, v14, [Landroid/net/Uri;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string v14, "subs"

    invoke-virtual {v2, v14, v11}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const-string v14, "subs.name"

    invoke-virtual {v2, v14, v9}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v14, "subs.enable"

    invoke-virtual {v2, v14, v7}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_66
    if-eqz p5, :cond_6f

    const-string v14, "position"

    move/from16 v0, p5

    invoke-virtual {v2, v14, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_6f
    new-instance v4, Landroid/content/Intent;

    const-string v14, "android.intent.action.VIEW"

    invoke-direct {v4, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_8b

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_7f
    :try_start_7f
    invoke-virtual {v4, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v14, 0x3de

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Lcom/mb/android/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_89
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7f .. :try_end_89} :catch_91

    const/4 v14, 0x1

    :goto_8a
    return v14

    :cond_8b
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_7f

    :catch_91
    move-exception v12

    const/4 v14, 0x0

    goto :goto_8a
.end method

.method public launchIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1769
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual/range {p0 .. p5}, Lcom/mb/android/MainActivity;->launchIntent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/16 v2, 0x3de

    if-ne p1, v2, :cond_38

    const/4 v2, -0x1

    if-ne p2, v2, :cond_38

    const-string v2, "end_by"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string v2, "position"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exPlayerResume("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mb/android/MainActivity;->RespondToWebView(Ljava/lang/String;)V

    :cond_38

    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 1089
    iget-object p1, p0, Lcom/mb/android/MainActivity;->currentProduct:Ltv/emby/iap/InAppProduct;

    invoke-virtual {p1}, Ltv/emby/iap/InAppProduct;->getEmbyFeatureCode()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1091
    new-instance p1, Lcom/mb/android/model/registration/AppstoreRegRequest;

    invoke-direct {p1}, Lcom/mb/android/model/registration/AppstoreRegRequest;-><init>()V

    const-string p2, "store"

    .line 1092
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mb/android/model/registration/AppstoreRegRequest;->setStore(Ljava/lang/String;)V

    .line 1093
    sget-object p2, Lcom/mb/android/MainActivity;->AppPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/mb/android/model/registration/AppstoreRegRequest;->setApplication(Ljava/lang/String;)V

    .line 1094
    iget-object p2, p0, Lcom/mb/android/MainActivity;->currentProduct:Ltv/emby/iap/InAppProduct;

    invoke-virtual {p2}, Ltv/emby/iap/InAppProduct;->getSku()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mb/android/model/registration/AppstoreRegRequest;->setProduct(Ljava/lang/String;)V

    .line 1095
    iget-object p2, p0, Lcom/mb/android/MainActivity;->currentProduct:Ltv/emby/iap/InAppProduct;

    invoke-virtual {p2}, Ltv/emby/iap/InAppProduct;->getEmbyFeatureCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mb/android/model/registration/AppstoreRegRequest;->setFeature(Ljava/lang/String;)V

    .line 1096
    iget-object p2, p0, Lcom/mb/android/MainActivity;->currentProduct:Ltv/emby/iap/InAppProduct;

    invoke-virtual {p2}, Ltv/emby/iap/InAppProduct;->getProductType()Ltv/emby/iap/ProductType;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/iap/ProductType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mb/android/model/registration/AppstoreRegRequest;->setType(Ljava/lang/String;)V

    const-string p2, "storeId"

    .line 1097
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mb/android/model/registration/AppstoreRegRequest;->setStoreId(Ljava/lang/String;)V

    :cond_0
    const-string p2, "storeToken"

    .line 1098
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mb/android/model/registration/AppstoreRegRequest;->setStoreToken(Ljava/lang/String;)V

    .line 1099
    iget-object p2, p0, Lcom/mb/android/MainActivity;->purchaseEmail:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/mb/android/model/registration/AppstoreRegRequest;->setEmail(Ljava/lang/String;)V

    .line 1100
    iget-object p2, p0, Lcom/mb/android/MainActivity;->currentProduct:Ltv/emby/iap/InAppProduct;

    invoke-virtual {p2}, Ltv/emby/iap/InAppProduct;->getPrice()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mb/android/model/registration/AppstoreRegRequest;->setAmt(Ljava/lang/String;)V

    .line 1102
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "window.IapManager.onPurchaseComplete("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/mb/android/MainActivity;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    invoke-interface {p3, p1}, Lcom/mb/android/model/serialization/IJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mb/android/MainActivity;->RespondToWebView(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "window.IapManager.onPurchaseComplete(true);"

    .line 1105
    invoke-virtual {p0, p1}, Lcom/mb/android/MainActivity;->RespondToWebView(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "window.IapManager.onPurchaseComplete(false);"

    .line 1108
    invoke-virtual {p0, p1}, Lcom/mb/android/MainActivity;->RespondToWebView(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onAppReady()V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 391
    invoke-virtual {p0}, Lcom/mb/android/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FcmData"

    .line 393
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Handling FCM message"

    invoke-interface {v1, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/mb/android/-$$Lambda$MainActivity$GyRnd97Uo3FHlIG-cvDPsKtyztQ;

    invoke-direct {v2, p0, v0}, Lcom/mb/android/-$$Lambda$MainActivity$GyRnd97Uo3FHlIG-cvDPsKtyztQ;-><init>(Lcom/mb/android/MainActivity;Landroid/content/Intent;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 400
    :cond_0
    invoke-virtual {p0}, Lcom/mb/android/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mb.android.ACTION_APP_READY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1408
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1410
    iget-object v0, p0, Lcom/mb/android/MainActivity;->_videoManager:Lcom/mb/android/media/VideoManager;

    if-eqz v0, :cond_0

    .line 1411
    invoke-virtual {v0, p1}, Lcom/mb/android/media/VideoManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "EmbyCameraUpload"

    .line 184
    invoke-virtual {p0}, Lcom/mb/android/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 186
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 204
    invoke-virtual {p0}, Lcom/mb/android/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 205
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ACTION_APPSHORTCUT"

    .line 208
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const-string v1, "shortcutid"

    .line 209
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v4, "android.media.action.MEDIA_PLAY_FROM_SEARCH"

    .line 211
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    invoke-direct {p0, p1}, Lcom/mb/android/MainActivity;->handleStartFromVoiceSearch(Landroid/content/Intent;)V

    :cond_1
    move-object p1, v5

    .line 215
    :goto_0
    invoke-virtual {p0}, Lcom/mb/android/MainActivity;->createViews()V

    .line 217
    iget-object v1, p0, Lcom/mb/android/MainActivity;->appView:Lcom/mb/android/webviews/IWebView;

    if-nez v1, :cond_2

    .line 218
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->makeWebView()V

    :cond_2
    if-eqz p1, :cond_3

    .line 222
    iget-object v1, p0, Lcom/mb/android/MainActivity;->appView:Lcom/mb/android/webviews/IWebView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file:///android_asset/www/index.html?start="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/mb/android/webviews/IWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 224
    :cond_3
    iget-object p1, p0, Lcom/mb/android/MainActivity;->appView:Lcom/mb/android/webviews/IWebView;

    const-string v1, "file:///android_asset/www/index.html"

    invoke-interface {p1, v1}, Lcom/mb/android/webviews/IWebView;->loadUrl(Ljava/lang/String;)V

    .line 227
    :goto_1
    invoke-virtual {p0}, Lcom/mb/android/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/mb/android/MainApp;

    invoke-virtual {p1}, Lcom/mb/android/MainApp;->getConnectionManager()Lcom/mb/android/apiinteraction/android/ConnectionManager;

    move-result-object p1

    .line 228
    invoke-virtual {p0, p1}, Lcom/mb/android/MainActivity;->addJavascriptInterfaces(Lcom/mb/android/apiinteraction/android/ConnectionManager;)V

    .line 229
    new-instance v1, Lcom/mb/android/media/tv/RecommendationManager;

    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v4

    invoke-direct {v1, p1, p0, v4}, Lcom/mb/android/media/tv/RecommendationManager;-><init>(Lcom/mb/android/apiinteraction/android/ConnectionManager;Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V

    iput-object v1, p0, Lcom/mb/android/MainActivity;->recommendationManager:Lcom/mb/android/media/tv/RecommendationManager;

    .line 230
    iget-object p1, p0, Lcom/mb/android/MainActivity;->recommendationManager:Lcom/mb/android/media/tv/RecommendationManager;

    invoke-virtual {p1}, Lcom/mb/android/media/tv/RecommendationManager;->loadAllChannels()V

    .line 234
    new-instance p1, Landroid/support/v4/media/MediaBrowserCompat;

    new-instance v1, Landroid/content/ComponentName;

    const-class v4, Lcom/mb/android/media/MediaService;

    invoke-direct {v1, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/mb/android/MainActivity;->mConnectionCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-direct {p1, p0, v1, v4, v5}, Landroid/support/v4/media/MediaBrowserCompat;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/mb/android/MainActivity;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    .line 237
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "beforePlayVideo"

    .line 238
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "videoDestroy"

    .line 239
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "FcmData"

    .line 240
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "verifyCurrentCertificate"

    .line 241
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v4, p0, Lcom/mb/android/MainActivity;->mMediaServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 244
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.mb.android.ACTION_SEND_MESSAGE"

    .line 245
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.mb.android.ACTION_SEND_COMMAND"

    .line 246
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v4, p0, Lcom/mb/android/MainActivity;->jsMessageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 249
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v1, p0, Lcom/mb/android/MainActivity;->recommendationManager:Lcom/mb/android/media/tv/RecommendationManager;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.mb.android.ACTION_PLAYBACK_END"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v4}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 251
    new-instance p1, Lcom/mb/android/sync/SyncSettingsBroadcastReceiver;

    invoke-direct {p1}, Lcom/mb/android/sync/SyncSettingsBroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/mb/android/MainActivity;->syncSettingsBroadcastReceiver:Lcom/mb/android/sync/SyncSettingsBroadcastReceiver;

    .line 252
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 253
    invoke-virtual {p1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.mb.android.ACTION_CAMERA_UPLOAD_CHANGED"

    .line 254
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v4, p0, Lcom/mb/android/MainActivity;->syncSettingsBroadcastReceiver:Lcom/mb/android/sync/SyncSettingsBroadcastReceiver;

    invoke-virtual {v1, v4, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 257
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge p1, v1, :cond_4

    .line 258
    iget-object p1, p0, Lcom/mb/android/MainActivity;->syncSettingsBroadcastReceiver:Lcom/mb/android/sync/SyncSettingsBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v4}, Lcom/mb/android/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 259
    iget-object p1, p0, Lcom/mb/android/MainActivity;->syncSettingsBroadcastReceiver:Lcom/mb/android/sync/SyncSettingsBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.hardware.action.NEW_VIDEO"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v4}, Lcom/mb/android/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_4
    const/4 p1, 0x3

    const/4 v4, 0x0

    .line 263
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mb/android/MainActivity;->setVolumeControlStream(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 266
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "Error in setVolumeControlStream"

    invoke-interface {v5, v7, p1, v6}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 270
    :goto_2
    :try_start_1
    const-class p1, Lcom/mb/android/CameraUploadWorker;

    invoke-static {p0, p1, v0, v3}, Lcom/mb/android/AppJobScheduler;->createOrUpdatePeriodicWork(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 271
    const-class p1, Lcom/mb/android/AppSyncWorker;

    const-string v5, "EmbyAppSync"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p0, p1, v5, v6}, Lcom/mb/android/AppJobScheduler;->createOrUpdatePeriodicWork(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 273
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_5

    .line 274
    const-class p1, Lcom/mb/android/CameraUploadWorker;

    sget-object v1, Landroidx/work/ExistingWorkPolicy;->REPLACE:Landroidx/work/ExistingWorkPolicy;

    invoke-static {p0, p1, v0, v3, v1}, Lcom/mb/android/AppJobScheduler;->scheduleContentUriTriggerWork(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Boolean;Landroidx/work/ExistingWorkPolicy;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 280
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v3, "Error in createOrUpdatePeriodic"

    invoke-interface {v0, v3, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 284
    :cond_5
    :goto_3
    new-instance p1, Lcom/mb/android/sync/AppSettings;

    invoke-direct {p1, p0}, Lcom/mb/android/sync/AppSettings;-><init>(Landroid/content/Context;)V

    .line 286
    invoke-virtual {p1}, Lcom/mb/android/sync/AppSettings;->getSyncOnlyOnWifi()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x2

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    .line 289
    :goto_4
    new-instance v0, Lcom/google/android/exoplayer2/scheduler/Requirements;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/scheduler/Requirements;-><init>(I)V

    .line 290
    const-class p1, Lcom/mb/android/download/exo/ExoDownloadService;

    invoke-static {p0, p1, v0, v2}, Lcom/google/android/exoplayer2/offline/DownloadService;->sendSetRequirements(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/exoplayer2/scheduler/Requirements;Z)V

    .line 295
    const-class p1, Lcom/mb/android/download/exo/ExoDownloadService;

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadService;->startForeground(Landroid/content/Context;Ljava/lang/Class;)V

    .line 299
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->createPullToRefresh()V

    .line 301
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->logExternalPaths()V

    .line 303
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->setWindowLayout()V

    .line 304
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->initSystemUi()V

    .line 307
    :try_start_2
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object p1

    const-string v0, "MediaBrowser.connect"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    iget-object p1, p0, Lcom/mb/android/MainActivity;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat;->connect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception p1

    .line 311
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "Error in MediaBrowser.connect"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 315
    :goto_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_8

    .line 316
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    const v1, 0x7f12009b

    const/high16 v2, 0x7f0f0000

    if-lt p1, v0, :cond_7

    .line 317
    new-instance p1, Landroid/app/ActivityManager$TaskDescription;

    .line 318
    invoke-virtual {p0, v1}, Lcom/mb/android/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v2}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;I)V

    .line 317
    invoke-virtual {p0, p1}, Lcom/mb/android/MainActivity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    goto :goto_6

    .line 322
    :cond_7
    invoke-virtual {p0}, Lcom/mb/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 324
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0, v1}, Lcom/mb/android/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/mb/android/MainActivity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    if-eqz p1, :cond_8

    .line 328
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    :goto_6
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1545
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MainActivity.onDestroy"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1546
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1548
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->destroyVideoSurface()V

    .line 1549
    iget-object v0, p0, Lcom/mb/android/MainActivity;->_videoManager:Lcom/mb/android/media/VideoManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1550
    invoke-virtual {v0}, Lcom/mb/android/media/VideoManager;->release()V

    .line 1551
    iput-object v1, p0, Lcom/mb/android/MainActivity;->_videoManager:Lcom/mb/android/media/VideoManager;

    .line 1554
    :cond_0
    invoke-virtual {p0}, Lcom/mb/android/MainActivity;->hideMediaSession()V

    .line 1556
    invoke-static {p0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMediaController(Landroid/app/Activity;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1558
    iget-object v2, p0, Lcom/mb/android/MainActivity;->mMediaControllerCallback:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 1560
    :cond_1
    iget-object v0, p0, Lcom/mb/android/MainActivity;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->disconnect()V

    .line 1562
    iget-object v0, p0, Lcom/mb/android/MainActivity;->syncSettingsBroadcastReceiver:Lcom/mb/android/sync/SyncSettingsBroadcastReceiver;

    if-eqz v0, :cond_2

    .line 1563
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v2, p0, Lcom/mb/android/MainActivity;->syncSettingsBroadcastReceiver:Lcom/mb/android/sync/SyncSettingsBroadcastReceiver;

    invoke-virtual {v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1564
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v0, v2, :cond_2

    .line 1565
    iget-object v0, p0, Lcom/mb/android/MainActivity;->syncSettingsBroadcastReceiver:Lcom/mb/android/sync/SyncSettingsBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mb/android/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1569
    :cond_2
    iget-object v0, p0, Lcom/mb/android/MainActivity;->appView:Lcom/mb/android/webviews/IWebView;

    if-eqz v0, :cond_4

    .line 1570
    iget-object v2, p0, Lcom/mb/android/MainActivity;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v2, :cond_3

    .line 1571
    invoke-interface {v0}, Lcom/mb/android/webviews/IWebView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->removeView(Landroid/view/View;)V

    .line 1573
    :cond_3
    iget-object v0, p0, Lcom/mb/android/MainActivity;->appView:Lcom/mb/android/webviews/IWebView;

    invoke-interface {v0}, Lcom/mb/android/webviews/IWebView;->destroy()V

    .line 1574
    iput-object v1, p0, Lcom/mb/android/MainActivity;->appView:Lcom/mb/android/webviews/IWebView;

    :cond_4
    return-void
.end method

.method protected onMediaControllerConnected()V
    .locals 3

    .line 741
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onMediaControllerConnected"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 743
    iget-object v0, p0, Lcom/mb/android/MainActivity;->voiceSearchParams:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 744
    invoke-static {p0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMediaController(Landroid/app/Activity;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    .line 747
    iget-object v1, p0, Lcom/mb/android/MainActivity;->voiceSearchParams:Landroid/os/Bundle;

    const-string v2, "query"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 748
    iget-object v2, p0, Lcom/mb/android/MainActivity;->voiceSearchParams:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    const/4 v0, 0x0

    .line 750
    iput-object v0, p0, Lcom/mb/android/MainActivity;->voiceSearchParams:Landroid/os/Bundle;

    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 756
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 758
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_APPSHORTCUT"

    .line 760
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "shortcutid"

    .line 761
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    .line 764
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AndroidShortcuts.execute(\'%s\');"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mb/android/MainActivity;->RespondToWebView(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "android.media.action.MEDIA_PLAY_FROM_SEARCH"

    .line 767
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 768
    invoke-direct {p0, p1}, Lcom/mb/android/MainActivity;->handleStartFromVoiceSearch(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v1, "com.mb.android.ACTION_START_PLAYBACK"

    .line 770
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 771
    invoke-direct {p0, p1}, Lcom/mb/android/MainActivity;->handlePlayItem(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.VIEW"

    .line 773
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/mb/android/MainActivity;->isIntentDeepLink(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 774
    :cond_3
    invoke-direct {p0, p1}, Lcom/mb/android/MainActivity;->handleViewItem(Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 873
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 874
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MainActivity.onPause"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 877
    iget-object v0, p0, Lcom/mb/android/MainActivity;->appView:Lcom/mb/android/webviews/IWebView;

    if-eqz v0, :cond_0

    const-string v1, "app-pause"

    .line 878
    invoke-interface {v0, v1}, Lcom/mb/android/webviews/IWebView;->sendJavascriptEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0

    .line 1525
    invoke-super {p0, p1}, Landroid/app/Activity;->onPictureInPictureModeChanged(Z)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p2, 0x4

    const/4 v0, 0x0

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 1282
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    aget p1, p3, v0

    if-nez p1, :cond_1

    .line 1286
    iget-object p1, p0, Lcom/mb/android/MainActivity;->downloadFileUrl:Ljava/lang/String;

    iget-object p2, p0, Lcom/mb/android/MainActivity;->downloadFilePath:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/mb/android/MainActivity;->downloadFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 1296
    :cond_2
    iget-object p1, p0, Lcom/mb/android/MainActivity;->storageRequestCb:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 1297
    array-length p1, p3

    const/4 p2, 0x1

    if-lez p1, :cond_3

    aget p1, p3, v0

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    const/4 p3, 0x2

    .line 1298
    new-array p3, p3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/mb/android/MainActivity;->storageRequestCb:Ljava/lang/String;

    aput-object v1, p3, v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p3, p2

    const-string p1, "%s(%s)"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mb/android/MainActivity;->RespondToWebView(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 1436
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1438
    iget-object v0, p0, Lcom/mb/android/MainActivity;->chromecast:Lcom/mb/android/chromecast/Chromecast;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1440
    :try_start_0
    invoke-virtual {v0}, Lcom/mb/android/chromecast/Chromecast;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1443
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Error in chromecast.onResume"

    invoke-interface {v2, v4, v0, v3}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1447
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mb/android/MainActivity;->appView:Lcom/mb/android/webviews/IWebView;

    if-nez v0, :cond_1

    return-void

    .line 1451
    :cond_1
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MainActivity.onResume"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1454
    :try_start_1
    iget-object v0, p0, Lcom/mb/android/MainActivity;->appView:Lcom/mb/android/webviews/IWebView;

    invoke-interface {v0}, Lcom/mb/android/webviews/IWebView;->onResume()V

    .line 1455
    iget-object v0, p0, Lcom/mb/android/MainActivity;->appView:Lcom/mb/android/webviews/IWebView;

    const-string v2, "app-resume"

    invoke-interface {v0, v2}, Lcom/mb/android/webviews/IWebView;->sendJavascriptEvent(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1458
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Error in appView.onResume"

    invoke-interface {v2, v4, v0, v3}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1462
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/mb/android/MainActivity;->_videoManager:Lcom/mb/android/media/VideoManager;

    if-eqz v0, :cond_2

    .line 1463
    iget-object v0, p0, Lcom/mb/android/MainActivity;->_videoManager:Lcom/mb/android/media/VideoManager;

    invoke-virtual {v0}, Lcom/mb/android/media/VideoManager;->onAppResume()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 1467
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Error in _videoManager.onAppResume"

    invoke-interface {v2, v3, v0, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1470
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/mb/android/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mb.android.ACTION_APP_RESUME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1471
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method protected onStart()V
    .locals 5

    .line 597
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 599
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->hidePlaybackControls()V

    const/4 v0, 0x0

    .line 603
    :try_start_0
    iget-object v1, p0, Lcom/mb/android/MainActivity;->_videoManager:Lcom/mb/android/media/VideoManager;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mb/android/MainActivity;->isPictureInPictureEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 604
    iget-object v1, p0, Lcom/mb/android/MainActivity;->_videoManager:Lcom/mb/android/media/VideoManager;

    invoke-virtual {v1}, Lcom/mb/android/media/VideoManager;->onAppResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 608
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "Error in _videoManager.onAppResume"

    invoke-interface {v2, v4, v1, v3}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 612
    :cond_0
    :goto_0
    :try_start_1
    new-instance v1, Lcom/mb/android/sync/AppSettings;

    invoke-direct {v1, p0}, Lcom/mb/android/sync/AppSettings;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mb/android/sync/AppSettings;->setSyncActive(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 615
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Error in AppSettings.setSyncActive"

    invoke-interface {v2, v3, v1, v0}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 621
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 623
    iget-object v0, p0, Lcom/mb/android/MainActivity;->_videoManager:Lcom/mb/android/media/VideoManager;

    if-eqz v0, :cond_2

    .line 624
    new-instance v0, Lcom/mb/android/sync/AppSettings;

    invoke-direct {v0, p0}, Lcom/mb/android/sync/AppSettings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/mb/android/sync/AppSettings;->getBackgroundVideoEnabled()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "external"

    .line 626
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 627
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->isPlayingOnExternalOrHeadphones()Z

    move-result v1

    goto :goto_0

    :cond_0
    const-string v2, "on"

    .line 629
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 632
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mb/android/MainActivity;->_videoManager:Lcom/mb/android/media/VideoManager;

    invoke-virtual {v0, v1}, Lcom/mb/android/media/VideoManager;->onAppPause(Z)V

    :cond_2
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 4

    .line 1420
    invoke-virtual {p0}, Lcom/mb/android/MainActivity;->isPictureInPictureSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/mb/android/MainActivity;->_videoManager:Lcom/mb/android/media/VideoManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mb/android/MainActivity;->mHasVideo:Z

    if-eqz v0, :cond_0

    .line 1422
    iget v0, p0, Lcom/mb/android/MainActivity;->mLastPlaybackState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1424
    :try_start_0
    invoke-virtual {p0}, Lcom/mb/android/MainActivity;->enterPictureInPictureMode()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1426
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Error in enterPictureInPictureMode"

    invoke-interface {v1, v3, v0, v2}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onViewShow()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 406
    invoke-virtual {p0}, Lcom/mb/android/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    .line 408
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/mb/android/MainActivity;->isIntentDeepLink(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "com.mb.android.ACTION_START_PLAYBACK"

    .line 411
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 412
    invoke-direct {p0, v0}, Lcom/mb/android/MainActivity;->handlePlayItem(Landroid/content/Intent;)V

    goto :goto_1

    .line 409
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/mb/android/MainActivity;->handleViewItem(Landroid/content/Intent;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 887
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 889
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->setSystemUi()V

    :cond_0
    return-void
.end method

.method public purchasePremiereMonthly(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1115
    iget-object v0, p0, Lcom/mb/android/MainActivity;->iapManager:Lcom/mb/android/iap/IapManager;

    invoke-virtual {v0}, Lcom/mb/android/iap/IapManager;->isStoreAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/mb/android/MainActivity;->iapManager:Lcom/mb/android/iap/IapManager;

    invoke-virtual {v0}, Lcom/mb/android/iap/IapManager;->getPremiereMonthly()Ltv/emby/iap/InAppProduct;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/mb/android/MainActivity;->beginPurchase(Ltv/emby/iap/InAppProduct;Ljava/lang/String;)V

    goto :goto_0

    .line 1118
    :cond_0
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Cannot proceed with purchasePremiereMonthly because store is not available"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public purchasePremiereWeekly(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1124
    iget-object v0, p0, Lcom/mb/android/MainActivity;->iapManager:Lcom/mb/android/iap/IapManager;

    invoke-virtual {v0}, Lcom/mb/android/iap/IapManager;->isStoreAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/mb/android/MainActivity;->iapManager:Lcom/mb/android/iap/IapManager;

    invoke-virtual {v0}, Lcom/mb/android/iap/IapManager;->getPremiereWeekly()Ltv/emby/iap/InAppProduct;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/mb/android/MainActivity;->beginPurchase(Ltv/emby/iap/InAppProduct;Ljava/lang/String;)V

    goto :goto_0

    .line 1127
    :cond_0
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Cannot proceed with purchasePremiereWeekly because store is not available"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public purchaseUnlock()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1133
    iget-object v0, p0, Lcom/mb/android/MainActivity;->iapManager:Lcom/mb/android/iap/IapManager;

    invoke-virtual {v0}, Lcom/mb/android/iap/IapManager;->isStoreAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/mb/android/MainActivity;->iapManager:Lcom/mb/android/iap/IapManager;

    invoke-virtual {v0}, Lcom/mb/android/iap/IapManager;->getUnlockProduct()Ltv/emby/iap/InAppProduct;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mb/android/MainActivity;->beginPurchase(Ltv/emby/iap/InAppProduct;Ljava/lang/String;)V

    goto :goto_0

    .line 1136
    :cond_0
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cannot proceed with purchaseUnlock because store is not available"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public requestApplyInsets()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 379
    new-instance v0, Lcom/mb/android/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/mb/android/MainActivity$1;-><init>(Lcom/mb/android/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/mb/android/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected resetWindow()V
    .locals 3

    .line 906
    invoke-virtual {p0}, Lcom/mb/android/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 907
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    .line 909
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 910
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    const/16 v1, 0x800

    .line 912
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public sendCommand(Ljava/lang/String;)V
    .locals 3

    .line 1224
    invoke-static {p0}, Lcom/mb/android/logging/AppLogger;->getLogger(Landroid/content/Context;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "sendCommand %s"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Emby.InputManager.trigger(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1227
    invoke-virtual {p0, p1}, Lcom/mb/android/MainActivity;->RespondToWebView(Ljava/lang/String;)V

    return-void
.end method

.method public sendEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1581
    invoke-virtual {p0, p1, p2, p3}, Lcom/mb/android/MainActivity;->getDraftWithProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "Open with"

    .line 1584
    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    .line 1586
    invoke-virtual {p0, p1, p2}, Lcom/mb/android/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public setFullscreen(Z)V
    .locals 0

    .line 895
    iput-boolean p1, p0, Lcom/mb/android/MainActivity;->immersiveMode:Z

    if-eqz p1, :cond_0

    .line 898
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->enterFullscreen()V

    goto :goto_0

    .line 900
    :cond_0
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->exitFullscreen()V

    :goto_0
    return-void
.end method

.method public setPictureInPictureEnabled(Z)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1506
    invoke-virtual {p0}, Lcom/mb/android/MainActivity;->isPictureInPictureSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1511
    :try_start_0
    invoke-virtual {p0}, Lcom/mb/android/MainActivity;->enterPictureInPictureMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1514
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error in enterPictureInPictureMode"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setPlayback(ZLjava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1378
    iput-boolean p1, p0, Lcom/mb/android/MainActivity;->isPlaybackLocal:Z

    .line 1380
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mb/android/media/MediaService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.example.android.uamp.ACTION_CMD"

    .line 1381
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CMD_NAME"

    const-string v2, "SET_PLAYBACK"

    .line 1383
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isLocalPlayer"

    .line 1384
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "playerId"

    .line 1385
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1387
    invoke-virtual {p0, v0}, Lcom/mb/android/MainActivity;->tryStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public setPullToRefreshEnabled(Z)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/mb/android/MainActivity;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-nez v0, :cond_0

    return-void

    .line 495
    :cond_0
    new-instance v0, Lcom/mb/android/MainActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/mb/android/MainActivity$3;-><init>(Lcom/mb/android/MainActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/mb/android/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public share(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1827
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x80000

    .line 1828
    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "text/plain"

    .line 1830
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1833
    :try_start_0
    invoke-static {p3}, Lcom/mb/android/MainActivity;->notEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1834
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getDownloadDir()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v3, p3

    move-object v4, p2

    .line 1836
    invoke-direct/range {v0 .. v5}, Lcom/mb/android/MainActivity;->getFileUriAndSetType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_0

    const-string v0, "image/*"

    .line 1838
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.STREAM"

    .line 1839
    invoke-virtual {v6, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1847
    :catch_0
    :cond_0
    invoke-static {p2}, Lcom/mb/android/MainActivity;->notEmpty(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "android.intent.extra.SUBJECT"

    .line 1848
    invoke-virtual {v6, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1852
    :cond_1
    invoke-static {p4}, Lcom/mb/android/MainActivity;->notEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1853
    invoke-static {p1}, Lcom/mb/android/MainActivity;->notEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1854
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, p4

    .line 1859
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/mb/android/MainActivity;->notEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "android.intent.extra.TEXT"

    .line 1860
    invoke-virtual {v6, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1862
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-ge p2, p3, :cond_4

    const-string p2, "sms_body"

    .line 1863
    invoke-virtual {v6, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const/high16 p1, 0x10000000

    .line 1868
    invoke-virtual {v6, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "Share"

    .line 1870
    invoke-static {v6, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x3d4

    invoke-virtual {p0, p1, p2}, Lcom/mb/android/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public tryStartService(Landroid/content/Intent;)V
    .locals 4

    .line 1393
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mb/android/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1397
    invoke-direct {p0}, Lcom/mb/android/MainActivity;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Error starting service"

    invoke-interface {v1, v3, v0, v2}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1399
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 1400
    invoke-virtual {p0, p1}, Lcom/mb/android/MainActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    :goto_0
    return-void
.end method

.method public updateMediaSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ZZIZ)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1251
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mb/android/media/MediaService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.example.android.uamp.ACTION_CMD"

    .line 1252
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CMD_NAME"

    const-string v2, "com.example.android.uamp.ACTION_REPORT"

    .line 1254
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "title"

    .line 1256
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "artist"

    .line 1257
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "album"

    .line 1258
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "duration"

    .line 1259
    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "position"

    .line 1260
    invoke-virtual {v0, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "imageUrl"

    .line 1261
    invoke-virtual {v0, p2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "canSeek"

    .line 1262
    invoke-virtual {v0, p2, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "isPaused"

    .line 1263
    invoke-virtual {v0, p2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "itemId"

    .line 1264
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "volume"

    .line 1265
    invoke-virtual {v0, p1, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "isMuted"

    .line 1266
    invoke-virtual {v0, p1, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1268
    invoke-virtual {p0, v0}, Lcom/mb/android/MainActivity;->tryStartService(Landroid/content/Intent;)V

    return-void
.end method
