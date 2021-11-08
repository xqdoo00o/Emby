.class public Lis/xyz/mpv/KeyMapping;
.super Ljava/lang/Object;
.source "KeyMapping.java"


# static fields
.field public static final map:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    .line 14
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x3e

    const-string v2, "SPACE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x42

    const-string v2, "ENTER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x3d

    const-string v2, "TAB"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x43

    const-string v2, "BS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x70

    const-string v2, "DEL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x7c

    const-string v2, "INS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x7a

    const-string v2, "HOME"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x7b

    const-string v2, "END"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x5c

    const-string v2, "PGUP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x5d

    const-string v2, "PGDWN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x6f

    const-string v2, "ESC"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x78

    const-string v2, "PRINT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x16

    const-string v2, "RIGHT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x15

    const-string v2, "LEFT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x14

    const-string v2, "DOWN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x13

    const-string v2, "UP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x7e

    const-string v2, "PLAY"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x7f

    const-string v2, "PAUSE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x55

    const-string v2, "PLAYPAUSE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x56

    const-string v2, "STOP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x5a

    const-string v2, "FORWARD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x59

    const-string v2, "REWIND"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x57

    const-string v2, "NEXT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x58

    const-string v2, "PREV"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0xa4

    const-string v2, "MUTE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x82

    const-string v2, "RECORD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0xa6

    const-string v2, "CHANNEL_UP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0xa7

    const-string v2, "CHANNEL_DOWN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x83

    const-string v2, "F1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x84

    const-string v2, "F2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x85

    const-string v2, "F3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x86

    const-string v2, "F4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x87

    const-string v2, "F5"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x88

    const-string v2, "F6"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x89

    const-string v2, "F7"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x8a

    const-string v2, "F8"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x8b

    const-string v2, "F9"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x8d

    const-string v2, "F11"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x8e

    const-string v2, "F12"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x90

    const-string v2, "KP0"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x91

    const-string v2, "KP1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x92

    const-string v2, "KP2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x93

    const-string v2, "KP3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x94

    const-string v2, "KP4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x95

    const-string v2, "KP5"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x96

    const-string v2, "KP6"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x97

    const-string v2, "KP7"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x98

    const-string v2, "KP8"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x99

    const-string v2, "KP9"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0x9e

    const-string v2, "KP_DEC"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    const/16 v1, 0xa0

    const-string v2, "KP_ENTER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
