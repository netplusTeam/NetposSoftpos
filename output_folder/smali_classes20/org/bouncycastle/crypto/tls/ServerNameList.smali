.class public Lorg/bouncycastle/crypto/tls/ServerNameList;
.super Ljava/lang/Object;
.source "ServerNameList.java"


# instance fields
.field protected serverNameList:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/util/Vector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 7
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/ServerNameList;->serverNameList:Ljava/util/Vector;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'serverNameList\' must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static checkNameType([SS)[S
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/NameType;->isValid(S)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lorg/bouncycastle/util/Arrays;->contains([SS)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0, p1}, Lorg/bouncycastle/util/Arrays;->append([SS)[S

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/ServerNameList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 7
    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object p0

    .line 9
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p0, 0x0

    .line 11
    new-array p0, p0, [S

    .line 12
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 13
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    if-lez v2, :cond_1

    .line 15
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/ServerName;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/ServerName;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/ServerName;->getNameType()S

    move-result v3

    invoke-static {p0, v3}, Lorg/bouncycastle/crypto/tls/ServerNameList;->checkNameType([SS)[S

    move-result-object p0

    if-eqz p0, :cond_0

    .line 23
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    .line 30
    :cond_1
    new-instance p0, Lorg/bouncycastle/crypto/tls/ServerNameList;

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/tls/ServerNameList;-><init>(Ljava/util/Vector;)V

    return-object p0

    .line 31
    :cond_2
    new-instance p0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3
    const/4 v1, 0x0

    new-array v2, v1, [S

    .line 4
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/ServerNameList;->serverNameList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 6
    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/ServerNameList;->serverNameList:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/crypto/tls/ServerName;

    .line 8
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/ServerName;->getNameType()S

    move-result v4

    invoke-static {v2, v4}, Lorg/bouncycastle/crypto/tls/ServerNameList;->checkNameType([SS)[S

    move-result-object v2

    if-eqz v2, :cond_0

    .line 14
    invoke-virtual {v3, v0}, Lorg/bouncycastle/crypto/tls/ServerName;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 21
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    .line 22
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-static {v1, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 23
    invoke-static {v0, p1}, Lorg/bouncycastle/util/io/Streams;->writeBufTo(Ljava/io/ByteArrayOutputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public getServerNameList()Ljava/util/Vector;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/ServerNameList;->serverNameList:Ljava/util/Vector;

    return-object v0
.end method
