.class Lorg/jline/terminal/impl/AbstractPty$PtyInputStream;
.super Lorg/jline/utils/NonBlockingInputStream;
.source "AbstractPty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/terminal/impl/AbstractPty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PtyInputStream"
.end annotation


# instance fields
.field c:I

.field final in:Ljava/io/InputStream;

.field final synthetic this$0:Lorg/jline/terminal/impl/AbstractPty;


# direct methods
.method constructor <init>(Lorg/jline/terminal/impl/AbstractPty;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "this$0"    # Lorg/jline/terminal/impl/AbstractPty;
    .param p2, "in"    # Ljava/io/InputStream;

    .line 56
    iput-object p1, p0, Lorg/jline/terminal/impl/AbstractPty$PtyInputStream;->this$0:Lorg/jline/terminal/impl/AbstractPty;

    invoke-direct {p0}, Lorg/jline/utils/NonBlockingInputStream;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lorg/jline/terminal/impl/AbstractPty$PtyInputStream;->c:I

    .line 57
    iput-object p2, p0, Lorg/jline/terminal/impl/AbstractPty$PtyInputStream;->in:Ljava/io/InputStream;

    .line 58
    return-void
.end method

.method private setNonBlocking()V
    .locals 4

    .line 95
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractPty$PtyInputStream;->this$0:Lorg/jline/terminal/impl/AbstractPty;

    invoke-static {v0}, Lorg/jline/terminal/impl/AbstractPty;->access$000(Lorg/jline/terminal/impl/AbstractPty;)Lorg/jline/terminal/Attributes;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractPty$PtyInputStream;->this$0:Lorg/jline/terminal/impl/AbstractPty;

    .line 96
    invoke-static {v0}, Lorg/jline/terminal/impl/AbstractPty;->access$000(Lorg/jline/terminal/impl/AbstractPty;)Lorg/jline/terminal/Attributes;

    move-result-object v0

    sget-object v2, Lorg/jline/terminal/Attributes$ControlChar;->VMIN:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v0, v2}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractPty$PtyInputStream;->this$0:Lorg/jline/terminal/impl/AbstractPty;

    .line 97
    invoke-static {v0}, Lorg/jline/terminal/impl/AbstractPty;->access$000(Lorg/jline/terminal/impl/AbstractPty;)Lorg/jline/terminal/Attributes;

    move-result-object v0

    sget-object v2, Lorg/jline/terminal/Attributes$ControlChar;->VTIME:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v0, v2}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 99
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractPty$PtyInputStream;->this$0:Lorg/jline/terminal/impl/AbstractPty;

    invoke-virtual {v0}, Lorg/jline/terminal/impl/AbstractPty;->getAttr()Lorg/jline/terminal/Attributes;

    move-result-object v0

    .line 100
    .local v0, "attr":Lorg/jline/terminal/Attributes;
    sget-object v2, Lorg/jline/terminal/Attributes$ControlChar;->VMIN:Lorg/jline/terminal/Attributes$ControlChar;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 101
    sget-object v2, Lorg/jline/terminal/Attributes$ControlChar;->VTIME:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v0, v2, v1}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 102
    iget-object v1, p0, Lorg/jline/terminal/impl/AbstractPty$PtyInputStream;->this$0:Lorg/jline/terminal/impl/AbstractPty;

    invoke-virtual {v1, v0}, Lorg/jline/terminal/impl/AbstractPty;->setAttr(Lorg/jline/terminal/Attributes;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v0    # "attr":Lorg/jline/terminal/Attributes;
    nop

    .line 107
    :cond_1
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOError;

    invoke-direct {v1, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public read(JZ)I
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "isPeek"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractPty$PtyInputStream;->this$0:Lorg/jline/terminal/impl/AbstractPty;

    invoke-virtual {v0}, Lorg/jline/terminal/impl/AbstractPty;->checkInterrupted()V

    .line 63
    iget v0, p0, Lorg/jline/terminal/impl/AbstractPty$PtyInputStream;->c:I

    if-eqz v0, :cond_1

    .line 64
    iget v0, p0, Lorg/jline/terminal/impl/AbstractPty$PtyInputStream;->c:I

    .line 65
    .local v0, "r":I
    if-nez p3, :cond_0

    .line 66
    const/4 v1, 0x0

    iput v1, p0, Lorg/jline/terminal/impl/AbstractPty$PtyInputStream;->c:I

    .line 68
    :cond_0
    return v0

    .line 70
    .end local v0    # "r":I
    :cond_1
    invoke-direct {p0}, Lorg/jline/terminal/impl/AbstractPty$PtyInputStream;->setNonBlocking()V

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 73
    .local v0, "start":J
    :goto_0
    iget-object v2, p0, Lorg/jline/terminal/impl/AbstractPty$PtyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 74
    .local v2, "r":I
    if-ltz v2, :cond_3

    .line 75
    if-eqz p3, :cond_2

    .line 76
    iput v2, p0, Lorg/jline/terminal/impl/AbstractPty$PtyInputStream;->c:I

    .line 78
    :cond_2
    return v2

    .line 80
    :cond_3
    iget-object v3, p0, Lorg/jline/terminal/impl/AbstractPty$PtyInputStream;->this$0:Lorg/jline/terminal/impl/AbstractPty;

    invoke-virtual {v3}, Lorg/jline/terminal/impl/AbstractPty;->checkInterrupted()V

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 82
    .local v3, "cur":J
    const-wide/16 v5, 0x0

    cmp-long v5, p1, v5

    if-lez v5, :cond_4

    sub-long v5, v3, v0

    cmp-long v5, v5, p1

    if-lez v5, :cond_4

    .line 83
    const/4 v5, -0x2

    return v5

    .line 85
    .end local v2    # "r":I
    .end local v3    # "cur":J
    :cond_4
    goto :goto_0
.end method

.method public readBuffered([B)I
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractPty$PtyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
.end method
