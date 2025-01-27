.class public abstract Lorg/jpos/iso/ISOFieldPackager;
.super Ljava/lang/Object;
.source "ISOFieldPackager.java"


# instance fields
.field private description:Ljava/lang/String;

.field private len:I

.field protected pad:Z

.field protected trim:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lorg/jpos/iso/ISOFieldPackager;->len:I

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/ISOFieldPackager;->description:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Lorg/jpos/iso/ISOFieldPackager;->len:I

    .line 81
    iput-object p2, p0, Lorg/jpos/iso/ISOFieldPackager;->description:Ljava/lang/String;

    .line 82
    return-void
.end method


# virtual methods
.method public createComponent(I)Lorg/jpos/iso/ISOComponent;
    .locals 1
    .param p1, "fieldNumber"    # I

    .line 107
    new-instance v0, Lorg/jpos/iso/ISOField;

    invoke-direct {v0, p1}, Lorg/jpos/iso/ISOField;-><init>(I)V

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/jpos/iso/ISOFieldPackager;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 90
    iget v0, p0, Lorg/jpos/iso/ISOFieldPackager;->len:I

    return v0
.end method

.method public abstract getMaxPackedLength()I
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0, p1}, Lorg/jpos/iso/ISOFieldPackager;->pack(Lorg/jpos/iso/ISOComponent;)[B

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/io/ObjectOutput;->write([B)V

    .line 146
    return-void
.end method

.method public abstract pack(Lorg/jpos/iso/ISOComponent;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation
.end method

.method protected readBytes(Ljava/io/InputStream;I)[B
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "l"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    new-array v0, p2, [B

    .line 150
    .local v0, "b":[B
    const/4 v1, 0x0

    .line 151
    .local v1, "n":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 152
    sub-int v2, p2, v1

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 153
    .local v2, "count":I
    if-ltz v2, :cond_0

    .line 155
    add-int/2addr v1, v2

    .line 156
    .end local v2    # "count":I
    goto :goto_0

    .line 154
    .restart local v2    # "count":I
    :cond_0
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 157
    .end local v2    # "count":I
    :cond_1
    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lorg/jpos/iso/ISOFieldPackager;->description:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setLength(I)V
    .locals 0
    .param p1, "len"    # I

    .line 93
    iput p1, p0, Lorg/jpos/iso/ISOFieldPackager;->len:I

    .line 94
    return-void
.end method

.method public setPad(Z)V
    .locals 0
    .param p1, "pad"    # Z

    .line 97
    iput-boolean p1, p0, Lorg/jpos/iso/ISOFieldPackager;->pad:Z

    .line 98
    return-void
.end method

.method public setTrim(Z)V
    .locals 0
    .param p1, "trim"    # Z

    .line 101
    iput-boolean p1, p0, Lorg/jpos/iso/ISOFieldPackager;->trim:Z

    .line 102
    return-void
.end method

.method public abstract unpack(Lorg/jpos/iso/ISOComponent;[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lorg/jpos/iso/ISOFieldPackager;->getMaxPackedLength()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lorg/jpos/iso/ISOFieldPackager;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/jpos/iso/ISOFieldPackager;->unpack(Lorg/jpos/iso/ISOComponent;[BI)I

    .line 135
    return-void
.end method
