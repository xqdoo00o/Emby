.class final Lnet/gotev/uploadservice/UploadServiceConfig$schemeHandlers$2;
.super Lkotlin/jvm/internal/Lambda;
.source "UploadServiceConfig.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/gotev/uploadservice/UploadServiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Class<",
        "+",
        "Lnet/gotev/uploadservice/schemehandlers/SchemeHandler;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUploadServiceConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UploadServiceConfig.kt\nnet/gotev/uploadservice/UploadServiceConfig$schemeHandlers$2\n*L\n1#1,234:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u00030\u0001H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Ljava/util/LinkedHashMap;",
        "",
        "Ljava/lang/Class;",
        "Lnet/gotev/uploadservice/schemehandlers/SchemeHandler;",
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
.field public static final INSTANCE:Lnet/gotev/uploadservice/UploadServiceConfig$schemeHandlers$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/gotev/uploadservice/UploadServiceConfig$schemeHandlers$2;

    invoke-direct {v0}, Lnet/gotev/uploadservice/UploadServiceConfig$schemeHandlers$2;-><init>()V

    sput-object v0, Lnet/gotev/uploadservice/UploadServiceConfig$schemeHandlers$2;->INSTANCE:Lnet/gotev/uploadservice/UploadServiceConfig$schemeHandlers$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lnet/gotev/uploadservice/UploadServiceConfig$schemeHandlers$2;->invoke()Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/LinkedHashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lnet/gotev/uploadservice/schemehandlers/SchemeHandler;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 38
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 39
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    const-class v2, Lnet/gotev/uploadservice/schemehandlers/FileSchemeHandler;

    const-string v3, "/"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-class v2, Lnet/gotev/uploadservice/schemehandlers/ContentResolverSchemeHandler;

    const-string v3, "content://"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
