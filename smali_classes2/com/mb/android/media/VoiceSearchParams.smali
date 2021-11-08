.class public final Lcom/mb/android/media/VoiceSearchParams;
.super Ljava/lang/Object;
.source "VoiceSearchParams.java"


# instance fields
.field public album:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public genre:Ljava/lang/String;

.field public isAlbumFocus:Z

.field public isAny:Z

.field public isArtistFocus:Z

.field public isGenreFocus:Z

.field public isSongFocus:Z

.field public isUnstructured:Z

.field public final query:Ljava/lang/String;

.field public song:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/mb/android/media/VoiceSearchParams;->query:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 36
    iput-boolean v1, p0, Lcom/mb/android/media/VoiceSearchParams;->isAny:Z

    goto/16 :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 39
    iput-boolean v1, p0, Lcom/mb/android/media/VoiceSearchParams;->isUnstructured:Z

    goto/16 :goto_0

    .line 42
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const-string v0, "android.intent.extra.focus"

    .line 48
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "vnd.android.cursor.item/genre"

    .line 49
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "android.intent.extra.genre"

    if-eqz v2, :cond_2

    .line 51
    iput-boolean v1, p0, Lcom/mb/android/media/VoiceSearchParams;->isGenreFocus:Z

    .line 52
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mb/android/media/VoiceSearchParams;->genre:Ljava/lang/String;

    .line 53
    iget-object p2, p0, Lcom/mb/android/media/VoiceSearchParams;->genre:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 57
    iput-object p1, p0, Lcom/mb/android/media/VoiceSearchParams;->genre:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, "vnd.android.cursor.item/artist"

    .line 59
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v2, "android.intent.extra.artist"

    if-eqz p1, :cond_3

    .line 61
    iput-boolean v1, p0, Lcom/mb/android/media/VoiceSearchParams;->isArtistFocus:Z

    .line 62
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mb/android/media/VoiceSearchParams;->genre:Ljava/lang/String;

    .line 63
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mb/android/media/VoiceSearchParams;->artist:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string p1, "vnd.android.cursor.item/album"

    .line 64
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v4, "android.intent.extra.album"

    if-eqz p1, :cond_4

    .line 66
    iput-boolean v1, p0, Lcom/mb/android/media/VoiceSearchParams;->isAlbumFocus:Z

    .line 67
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mb/android/media/VoiceSearchParams;->album:Ljava/lang/String;

    .line 68
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mb/android/media/VoiceSearchParams;->genre:Ljava/lang/String;

    .line 69
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mb/android/media/VoiceSearchParams;->artist:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string p1, "vnd.android.cursor.item/audio"

    .line 70
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 72
    iput-boolean v1, p0, Lcom/mb/android/media/VoiceSearchParams;->isSongFocus:Z

    const-string p1, "android.intent.extra.title"

    .line 73
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mb/android/media/VoiceSearchParams;->song:Ljava/lang/String;

    .line 74
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mb/android/media/VoiceSearchParams;->album:Ljava/lang/String;

    .line 75
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mb/android/media/VoiceSearchParams;->genre:Ljava/lang/String;

    .line 76
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mb/android/media/VoiceSearchParams;->artist:Ljava/lang/String;

    goto :goto_0

    .line 79
    :cond_5
    iput-boolean v1, p0, Lcom/mb/android/media/VoiceSearchParams;->isUnstructured:Z

    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mb/android/media/VoiceSearchParams;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isAny="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mb/android/media/VoiceSearchParams;->isAny:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isUnstructured="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mb/android/media/VoiceSearchParams;->isUnstructured:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isGenreFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mb/android/media/VoiceSearchParams;->isGenreFocus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isArtistFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mb/android/media/VoiceSearchParams;->isArtistFocus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isAlbumFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mb/android/media/VoiceSearchParams;->isAlbumFocus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isSongFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mb/android/media/VoiceSearchParams;->isSongFocus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " genre="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mb/android/media/VoiceSearchParams;->genre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mb/android/media/VoiceSearchParams;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " album="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mb/android/media/VoiceSearchParams;->album:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " song="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mb/android/media/VoiceSearchParams;->song:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
