.class final Lorg/apache/commons/codec/language/bm/Rule$2;
.super Lorg/apache/commons/codec/language/bm/Rule;
.source "Rule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/codec/language/bm/Rule;->parseRules(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final loc:Ljava/lang/String;

.field private final myLine:I

.field final synthetic val$cLine:I

.field final synthetic val$lCon:Ljava/lang/String;

.field final synthetic val$location:Ljava/lang/String;

.field final synthetic val$pat:Ljava/lang/String;

.field final synthetic val$rCon:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 465
    iput p5, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->val$cLine:I

    iput-object p6, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->val$location:Ljava/lang/String;

    iput-object p7, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->val$pat:Ljava/lang/String;

    iput-object p8, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->val$lCon:Ljava/lang/String;

    iput-object p9, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->val$rCon:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/codec/language/bm/Rule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;)V

    .line 466
    iget p1, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->val$cLine:I

    iput p1, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->myLine:I

    .line 467
    iget-object p1, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->val$location:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->loc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rule"

    .line 472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{line="

    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->myLine:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", loc=\'"

    .line 474
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->loc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pat=\'"

    .line 475
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->val$pat:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lcon=\'"

    .line 476
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->val$lCon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", rcon=\'"

    .line 477
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->val$rCon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
