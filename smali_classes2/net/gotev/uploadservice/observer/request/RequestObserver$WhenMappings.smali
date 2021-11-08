.class public final synthetic Lnet/gotev/uploadservice/observer/request/RequestObserver$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lnet/gotev/uploadservice/data/UploadStatus;->values()[Lnet/gotev/uploadservice/data/UploadStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/gotev/uploadservice/observer/request/RequestObserver$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lnet/gotev/uploadservice/observer/request/RequestObserver$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lnet/gotev/uploadservice/data/UploadStatus;->InProgress:Lnet/gotev/uploadservice/data/UploadStatus;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/data/UploadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lnet/gotev/uploadservice/observer/request/RequestObserver$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lnet/gotev/uploadservice/data/UploadStatus;->Error:Lnet/gotev/uploadservice/data/UploadStatus;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/data/UploadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lnet/gotev/uploadservice/observer/request/RequestObserver$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lnet/gotev/uploadservice/data/UploadStatus;->Success:Lnet/gotev/uploadservice/data/UploadStatus;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/data/UploadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lnet/gotev/uploadservice/observer/request/RequestObserver$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lnet/gotev/uploadservice/data/UploadStatus;->Completed:Lnet/gotev/uploadservice/data/UploadStatus;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/data/UploadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    return-void
.end method
