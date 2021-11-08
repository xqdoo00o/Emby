.class public final synthetic Lis/xyz/mpv/MPVActivity$WhenMappings;
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

    invoke-static {}, Lis/xyz/mpv/PropertyChange;->values()[Lis/xyz/mpv/PropertyChange;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lis/xyz/mpv/MPVActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lis/xyz/mpv/MPVActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lis/xyz/mpv/PropertyChange;->Init:Lis/xyz/mpv/PropertyChange;

    invoke-virtual {v1}, Lis/xyz/mpv/PropertyChange;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lis/xyz/mpv/MPVActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lis/xyz/mpv/PropertyChange;->Seek:Lis/xyz/mpv/PropertyChange;

    invoke-virtual {v1}, Lis/xyz/mpv/PropertyChange;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lis/xyz/mpv/MPVActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lis/xyz/mpv/PropertyChange;->Volume:Lis/xyz/mpv/PropertyChange;

    invoke-virtual {v1}, Lis/xyz/mpv/PropertyChange;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lis/xyz/mpv/MPVActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lis/xyz/mpv/PropertyChange;->Bright:Lis/xyz/mpv/PropertyChange;

    invoke-virtual {v1}, Lis/xyz/mpv/PropertyChange;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v0, Lis/xyz/mpv/MPVActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lis/xyz/mpv/PropertyChange;->Finalize:Lis/xyz/mpv/PropertyChange;

    invoke-virtual {v1}, Lis/xyz/mpv/PropertyChange;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    return-void
.end method
