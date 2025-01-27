.class public Lch/qos/logback/core/encoder/EchoEncoder;
.super Lch/qos/logback/core/encoder/EncoderBase;
.source "EchoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/encoder/EncoderBase<",
        "TE;>;"
    }
.end annotation


# instance fields
.field fileFooter:Ljava/lang/String;

.field fileHeader:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    .local p0, "this":Lch/qos/logback/core/encoder/EchoEncoder;, "Lch/qos/logback/core/encoder/EchoEncoder<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/encoder/EncoderBase;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)[B"
        }
    .end annotation

    .line 24
    .local p0, "this":Lch/qos/logback/core/encoder/EchoEncoder;, "Lch/qos/logback/core/encoder/EchoEncoder<TE;>;"
    .local p1, "event":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "val":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public footerBytes()[B
    .locals 1

    .line 29
    .local p0, "this":Lch/qos/logback/core/encoder/EchoEncoder;, "Lch/qos/logback/core/encoder/EchoEncoder<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/encoder/EchoEncoder;->fileFooter:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x0

    return-object v0

    .line 32
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public headerBytes()[B
    .locals 1

    .line 36
    .local p0, "this":Lch/qos/logback/core/encoder/EchoEncoder;, "Lch/qos/logback/core/encoder/EchoEncoder<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/encoder/EchoEncoder;->fileHeader:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
