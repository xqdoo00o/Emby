.class public final Lnet/gotev/uploadservice/UploadTask$doForEachObserver$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UploadTask.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gotev/uploadservice/UploadTask;->doForEachObserver(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUploadTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UploadTask.kt\nnet/gotev/uploadservice/UploadTask$doForEachObserver$1$1\n*L\n1#1,304:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lnet/gotev/uploadservice/UploadTask$doForEachObserver$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/gotev/uploadservice/UploadTask$doForEachObserver$1$1;

    invoke-direct {v0}, Lnet/gotev/uploadservice/UploadTask$doForEachObserver$1$1;-><init>()V

    sput-object v0, Lnet/gotev/uploadservice/UploadTask$doForEachObserver$1$1;->INSTANCE:Lnet/gotev/uploadservice/UploadTask$doForEachObserver$1$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lnet/gotev/uploadservice/UploadTask$doForEachObserver$1$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "error while dispatching event to observer"

    return-object v0
.end method
