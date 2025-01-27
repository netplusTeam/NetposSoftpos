.class public Lorg/jpos/iso/header/BaseHeader;
.super Ljava/lang/Object;
.source "BaseHeader.java"

# interfaces
.implements Lorg/jpos/iso/ISOHeader;
.implements Lorg/jpos/util/Loggeable;


# static fields
.field private static final serialVersionUID:J = 0x786223a14b9fd347L


# instance fields
.field transient asciiEncoding:Z

.field protected header:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/iso/header/BaseHeader;->asciiEncoding:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/header/BaseHeader;->header:[B

    .line 46
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "header"    # [B

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/iso/header/BaseHeader;->asciiEncoding:Z

    .line 49
    invoke-virtual {p0, p1}, Lorg/jpos/iso/header/BaseHeader;->unpack([B)I

    .line 50
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 55
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/header/BaseHeader;

    .line 56
    .local v0, "h":Lorg/jpos/iso/header/BaseHeader;
    iget-object v1, p0, Lorg/jpos/iso/header/BaseHeader;->header:[B

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lorg/jpos/iso/header/BaseHeader;->header:[B
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    return-object v0

    .line 59
    .end local v0    # "h":Lorg/jpos/iso/header/BaseHeader;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lorg/jpos/iso/header/BaseHeader;->header:[B

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<header>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jpos/iso/header/BaseHeader;->header:[B

    .line 92
    invoke-static {v1}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</header>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    :cond_0
    return-void
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1

    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/jpos/iso/header/BaseHeader;->header:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAsciiEncoding()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lorg/jpos/iso/header/BaseHeader;->asciiEncoding:Z

    return v0
.end method

.method public pack()[B
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/jpos/iso/header/BaseHeader;->header:[B

    if-eqz v0, :cond_0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setAsciiEncoding(Z)V
    .locals 0
    .param p1, "asciiEncoding"    # Z

    .line 97
    iput-boolean p1, p0, Lorg/jpos/iso/header/BaseHeader;->asciiEncoding:Z

    .line 98
    return-void
.end method

.method public setDestination(Ljava/lang/String;)V
    .locals 0
    .param p1, "dst"    # Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "src"    # Ljava/lang/String;

    .line 83
    return-void
.end method

.method public swapDirection()V
    .locals 0

    .line 86
    return-void
.end method

.method public unpack([B)I
    .locals 1
    .param p1, "header"    # [B

    .line 69
    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/jpos/iso/header/BaseHeader;->header:[B

    .line 71
    array-length v0, p1

    return v0

    .line 73
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/header/BaseHeader;->header:[B

    .line 75
    const/4 v0, 0x0

    return v0
.end method
