.class public abstract Lorg/apache/sshd/common/compression/BaseCompression;
.super Ljava/lang/Object;
.source "BaseCompression.java"

# interfaces
.implements Lorg/apache/sshd/common/compression/Compression;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "No compression name"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/compression/BaseCompression;->name:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/apache/sshd/common/compression/BaseCompression;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isCompressionExecuted()Z
    .locals 1

    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/sshd/common/compression/BaseCompression;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
