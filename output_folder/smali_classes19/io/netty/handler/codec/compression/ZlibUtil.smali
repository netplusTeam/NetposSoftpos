.class final Lio/netty/handler/codec/compression/ZlibUtil;
.super Ljava/lang/Object;
.source "ZlibUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method static convertWrapperType(Lio/netty/handler/codec/compression/ZlibWrapper;)Lcom/jcraft/jzlib/JZlib$WrapperType;
    .locals 2
    .param p0, "wrapper"    # Lio/netty/handler/codec/compression/ZlibWrapper;

    .line 45
    sget-object v0, Lio/netty/handler/codec/compression/ZlibUtil$1;->$SwitchMap$io$netty$handler$codec$compression$ZlibWrapper:[I

    invoke-virtual {p0}, Lio/netty/handler/codec/compression/ZlibWrapper;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 59
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 56
    :pswitch_0
    sget-object v0, Lcom/jcraft/jzlib/JZlib;->W_ANY:Lcom/jcraft/jzlib/JZlib$WrapperType;

    .line 57
    .local v0, "convertedWrapperType":Lcom/jcraft/jzlib/JZlib$WrapperType;
    goto :goto_0

    .line 53
    .end local v0    # "convertedWrapperType":Lcom/jcraft/jzlib/JZlib$WrapperType;
    :pswitch_1
    sget-object v0, Lcom/jcraft/jzlib/JZlib;->W_GZIP:Lcom/jcraft/jzlib/JZlib$WrapperType;

    .line 54
    .restart local v0    # "convertedWrapperType":Lcom/jcraft/jzlib/JZlib$WrapperType;
    goto :goto_0

    .line 50
    .end local v0    # "convertedWrapperType":Lcom/jcraft/jzlib/JZlib$WrapperType;
    :pswitch_2
    sget-object v0, Lcom/jcraft/jzlib/JZlib;->W_ZLIB:Lcom/jcraft/jzlib/JZlib$WrapperType;

    .line 51
    .restart local v0    # "convertedWrapperType":Lcom/jcraft/jzlib/JZlib$WrapperType;
    goto :goto_0

    .line 47
    .end local v0    # "convertedWrapperType":Lcom/jcraft/jzlib/JZlib$WrapperType;
    :pswitch_3
    sget-object v0, Lcom/jcraft/jzlib/JZlib;->W_NONE:Lcom/jcraft/jzlib/JZlib$WrapperType;

    .line 48
    .restart local v0    # "convertedWrapperType":Lcom/jcraft/jzlib/JZlib$WrapperType;
    nop

    .line 61
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static deflaterException(Lcom/jcraft/jzlib/Deflater;Ljava/lang/String;I)Lio/netty/handler/codec/compression/CompressionException;
    .locals 4
    .param p0, "z"    # Lcom/jcraft/jzlib/Deflater;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "resultCode"    # I

    .line 40
    new-instance v0, Lio/netty/handler/codec/compression/CompressionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jzlib/Deflater;->msg:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jzlib/Deflater;->msg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/compression/CompressionException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static fail(Lcom/jcraft/jzlib/Deflater;Ljava/lang/String;I)V
    .locals 1
    .param p0, "z"    # Lcom/jcraft/jzlib/Deflater;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "resultCode"    # I

    .line 32
    invoke-static {p0, p1, p2}, Lio/netty/handler/codec/compression/ZlibUtil;->deflaterException(Lcom/jcraft/jzlib/Deflater;Ljava/lang/String;I)Lio/netty/handler/codec/compression/CompressionException;

    move-result-object v0

    throw v0
.end method

.method static fail(Lcom/jcraft/jzlib/Inflater;Ljava/lang/String;I)V
    .locals 1
    .param p0, "z"    # Lcom/jcraft/jzlib/Inflater;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "resultCode"    # I

    .line 28
    invoke-static {p0, p1, p2}, Lio/netty/handler/codec/compression/ZlibUtil;->inflaterException(Lcom/jcraft/jzlib/Inflater;Ljava/lang/String;I)Lio/netty/handler/codec/compression/DecompressionException;

    move-result-object v0

    throw v0
.end method

.method static inflaterException(Lcom/jcraft/jzlib/Inflater;Ljava/lang/String;I)Lio/netty/handler/codec/compression/DecompressionException;
    .locals 4
    .param p0, "z"    # Lcom/jcraft/jzlib/Inflater;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "resultCode"    # I

    .line 36
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jzlib/Inflater;->msg:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jzlib/Inflater;->msg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static wrapperOverhead(Lio/netty/handler/codec/compression/ZlibWrapper;)I
    .locals 2
    .param p0, "wrapper"    # Lio/netty/handler/codec/compression/ZlibWrapper;

    .line 66
    sget-object v0, Lio/netty/handler/codec/compression/ZlibUtil$1;->$SwitchMap$io$netty$handler$codec$compression$ZlibWrapper:[I

    invoke-virtual {p0}, Lio/netty/handler/codec/compression/ZlibWrapper;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 78
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 75
    :pswitch_0
    const/16 v0, 0xa

    .line 76
    .local v0, "overhead":I
    goto :goto_0

    .line 72
    .end local v0    # "overhead":I
    :pswitch_1
    const/4 v0, 0x2

    .line 73
    .restart local v0    # "overhead":I
    goto :goto_0

    .line 68
    .end local v0    # "overhead":I
    :pswitch_2
    const/4 v0, 0x0

    .line 69
    .restart local v0    # "overhead":I
    nop

    .line 80
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
