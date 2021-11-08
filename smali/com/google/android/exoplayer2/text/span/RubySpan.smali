.class public final Lcom/google/android/exoplayer2/text/span/RubySpan;
.super Ljava/lang/Object;
.source "RubySpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/span/RubySpan$Position;
    }
.end annotation


# static fields
.field public static final POSITION_OVER:I = 0x1

.field public static final POSITION_UNDER:I = 0x2

.field public static final POSITION_UNKNOWN:I = -0x1


# instance fields
.field public final position:I

.field public final rubyText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/span/RubySpan;->rubyText:Ljava/lang/String;

    .line 84
    iput p2, p0, Lcom/google/android/exoplayer2/text/span/RubySpan;->position:I

    return-void
.end method
