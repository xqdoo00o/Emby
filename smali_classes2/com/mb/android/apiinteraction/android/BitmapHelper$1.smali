.class final Lcom/mb/android/apiinteraction/android/BitmapHelper$1;
.super Lcom/mb/android/apiinteraction/android/AlbumArtCache$FetchListener;
.source "BitmapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/apiinteraction/android/BitmapHelper;->getBitmap(Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$outerResponse:Lcom/mb/android/apiinteraction/Response;


# direct methods
.method constructor <init>(Lcom/mb/android/apiinteraction/Response;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/mb/android/apiinteraction/android/BitmapHelper$1;->val$outerResponse:Lcom/mb/android/apiinteraction/Response;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/android/AlbumArtCache$FetchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetched(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 95
    iget-object p1, p0, Lcom/mb/android/apiinteraction/android/BitmapHelper$1;->val$outerResponse:Lcom/mb/android/apiinteraction/Response;

    invoke-virtual {p1, p2}, Lcom/mb/android/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
