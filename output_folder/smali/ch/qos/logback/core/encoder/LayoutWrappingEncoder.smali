.class public Lch/qos/logback/core/encoder/LayoutWrappingEncoder;
.super Lch/qos/logback/core/encoder/EncoderBase;
.source "LayoutWrappingEncoder.java"


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
.field private charset:Ljava/nio/charset/Charset;

.field immediateFlush:Ljava/lang/Boolean;

.field protected layout:Lch/qos/logback/core/Layout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/Layout<",
            "TE;>;"
        }
    .end annotation
.end field

.field parent:Lch/qos/logback/core/Appender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/Appender<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    .local p0, "this":Lch/qos/logback/core/encoder/LayoutWrappingEncoder;, "Lch/qos/logback/core/encoder/LayoutWrappingEncoder<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/encoder/EncoderBase;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->immediateFlush:Ljava/lang/Boolean;

    return-void
.end method

.method private appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "s"    # Ljava/lang/String;

    .line 142
    .local p0, "this":Lch/qos/logback/core/encoder/LayoutWrappingEncoder;, "Lch/qos/logback/core/encoder/LayoutWrappingEncoder<TE;>;"
    if-eqz p2, :cond_0

    .line 143
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_0
    return-void
.end method

.method private convertToBytes(Ljava/lang/String;)[B
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 107
    .local p0, "this":Lch/qos/logback/core/encoder/LayoutWrappingEncoder;, "Lch/qos/logback/core/encoder/LayoutWrappingEncoder<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->charset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 110
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)[B"
        }
    .end annotation

    .line 115
    .local p0, "this":Lch/qos/logback/core/encoder/LayoutWrappingEncoder;, "Lch/qos/logback/core/encoder/LayoutWrappingEncoder<TE;>;"
    .local p1, "event":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->layout:Lch/qos/logback/core/Layout;

    invoke-interface {v0, p1}, Lch/qos/logback/core/Layout;->doLayout(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "txt":Ljava/lang/String;
    invoke-direct {p0, v0}, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->convertToBytes(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public footerBytes()[B
    .locals 2

    .line 97
    .local p0, "this":Lch/qos/logback/core/encoder/LayoutWrappingEncoder;, "Lch/qos/logback/core/encoder/LayoutWrappingEncoder<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->layout:Lch/qos/logback/core/Layout;

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->layout:Lch/qos/logback/core/Layout;

    invoke-interface {v1}, Lch/qos/logback/core/Layout;->getPresentationFooter()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->layout:Lch/qos/logback/core/Layout;

    invoke-interface {v1}, Lch/qos/logback/core/Layout;->getFileFooter()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->convertToBytes(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 48
    .local p0, "this":Lch/qos/logback/core/encoder/LayoutWrappingEncoder;, "Lch/qos/logback/core/encoder/LayoutWrappingEncoder<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getLayout()Lch/qos/logback/core/Layout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lch/qos/logback/core/Layout<",
            "TE;>;"
        }
    .end annotation

    .line 40
    .local p0, "this":Lch/qos/logback/core/encoder/LayoutWrappingEncoder;, "Lch/qos/logback/core/encoder/LayoutWrappingEncoder<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->layout:Lch/qos/logback/core/Layout;

    return-object v0
.end method

.method public headerBytes()[B
    .locals 2

    .line 80
    .local p0, "this":Lch/qos/logback/core/encoder/LayoutWrappingEncoder;, "Lch/qos/logback/core/encoder/LayoutWrappingEncoder<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->layout:Lch/qos/logback/core/Layout;

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->layout:Lch/qos/logback/core/Layout;

    invoke-interface {v1}, Lch/qos/logback/core/Layout;->getFileHeader()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->layout:Lch/qos/logback/core/Layout;

    invoke-interface {v1}, Lch/qos/logback/core/Layout;->getPresentationHeader()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 90
    sget-object v1, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->convertToBytes(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public isStarted()Z
    .locals 1

    .line 120
    .local p0, "this":Lch/qos/logback/core/encoder/LayoutWrappingEncoder;, "Lch/qos/logback/core/encoder/LayoutWrappingEncoder<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 0
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 62
    .local p0, "this":Lch/qos/logback/core/encoder/LayoutWrappingEncoder;, "Lch/qos/logback/core/encoder/LayoutWrappingEncoder<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->charset:Ljava/nio/charset/Charset;

    .line 63
    return-void
.end method

.method public setImmediateFlush(Z)V
    .locals 1
    .param p1, "immediateFlush"    # Z

    .line 73
    .local p0, "this":Lch/qos/logback/core/encoder/LayoutWrappingEncoder;, "Lch/qos/logback/core/encoder/LayoutWrappingEncoder<TE;>;"
    const-string v0, "As of version 1.2.0 \"immediateFlush\" property should be set within the enclosing Appender."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->addWarn(Ljava/lang/String;)V

    .line 74
    const-string v0, "Please move \"immediateFlush\" property into the enclosing appender."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->addWarn(Ljava/lang/String;)V

    .line 75
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->immediateFlush:Ljava/lang/Boolean;

    .line 76
    return-void
.end method

.method public setLayout(Lch/qos/logback/core/Layout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Layout<",
            "TE;>;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lch/qos/logback/core/encoder/LayoutWrappingEncoder;, "Lch/qos/logback/core/encoder/LayoutWrappingEncoder<TE;>;"
    .local p1, "layout":Lch/qos/logback/core/Layout;, "Lch/qos/logback/core/Layout<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->layout:Lch/qos/logback/core/Layout;

    .line 45
    return-void
.end method

.method public setParent(Lch/qos/logback/core/Appender;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Appender<",
            "*>;)V"
        }
    .end annotation

    .line 154
    .local p0, "this":Lch/qos/logback/core/encoder/LayoutWrappingEncoder;, "Lch/qos/logback/core/encoder/LayoutWrappingEncoder<TE;>;"
    .local p1, "parent":Lch/qos/logback/core/Appender;, "Lch/qos/logback/core/Appender<*>;"
    iput-object p1, p0, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->parent:Lch/qos/logback/core/Appender;

    .line 155
    return-void
.end method

.method public start()V
    .locals 2

    .line 124
    .local p0, "this":Lch/qos/logback/core/encoder/LayoutWrappingEncoder;, "Lch/qos/logback/core/encoder/LayoutWrappingEncoder<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->immediateFlush:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->parent:Lch/qos/logback/core/Appender;

    instance-of v0, v0, Lch/qos/logback/core/OutputStreamAppender;

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting the \"immediateFlush\" property of the enclosing appender to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->immediateFlush:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->addWarn(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->parent:Lch/qos/logback/core/Appender;

    check-cast v0, Lch/qos/logback/core/OutputStreamAppender;

    .line 129
    .local v0, "parentOutputStreamAppender":Lch/qos/logback/core/OutputStreamAppender;, "Lch/qos/logback/core/OutputStreamAppender<TE;>;"
    iget-object v1, p0, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->immediateFlush:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lch/qos/logback/core/OutputStreamAppender;->setImmediateFlush(Z)V

    .line 130
    .end local v0    # "parentOutputStreamAppender":Lch/qos/logback/core/OutputStreamAppender;, "Lch/qos/logback/core/OutputStreamAppender<TE;>;"
    goto :goto_0

    .line 131
    :cond_0
    const-string v0, "Could not set the \"immediateFlush\" property of the enclosing appender."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->addError(Ljava/lang/String;)V

    .line 134
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->started:Z

    .line 135
    return-void
.end method

.method public stop()V
    .locals 1

    .line 138
    .local p0, "this":Lch/qos/logback/core/encoder/LayoutWrappingEncoder;, "Lch/qos/logback/core/encoder/LayoutWrappingEncoder<TE;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->started:Z

    .line 139
    return-void
.end method
