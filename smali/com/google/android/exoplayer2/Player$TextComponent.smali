.class public interface abstract Lcom/google/android/exoplayer2/Player$TextComponent;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TextComponent"
.end annotation


# virtual methods
.method public abstract addTextOutput(Lcom/google/android/exoplayer2/text/TextOutput;)V
.end method

.method public abstract getCurrentCues()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeTextOutput(Lcom/google/android/exoplayer2/text/TextOutput;)V
.end method

.method public abstract setSubtitleSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
