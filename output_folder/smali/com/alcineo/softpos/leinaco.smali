.class public Lcom/alcineo/softpos/leinaco;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final nacieol:[B

.field private static final ocenlai:Lorg/slf4j/Logger;


# instance fields
.field private final acileon:Ljava/lang/String;

.field private final aoleinc:I

.field private final enolcai:Ljava/net/Socket;

.field private final noaceli:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-class v0, Lcom/alcineo/softpos/leinaco;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/alcineo/softpos/leinaco;->ocenlai:Lorg/slf4j/Logger;

    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lcom/alcineo/softpos/leinaco;->nacieol:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alcineo/softpos/leinaco;->acileon:Ljava/lang/String;

    iput p2, p0, Lcom/alcineo/softpos/leinaco;->aoleinc:I

    iput p3, p0, Lcom/alcineo/softpos/leinaco;->noaceli:I

    new-instance p1, Ljava/net/Socket;

    invoke-direct {p1}, Ljava/net/Socket;-><init>()V

    iput-object p1, p0, Lcom/alcineo/softpos/leinaco;->enolcai:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public native acileon()V
.end method

.method public acileon([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alcineo/softpos/leinaco;->enolcai:Ljava/net/Socket;

    iget v1, p0, Lcom/alcineo/softpos/leinaco;->noaceli:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    sget-object v0, Lcom/alcineo/softpos/leinaco;->ocenlai:Lorg/slf4j/Logger;

    iget-object v1, p0, Lcom/alcineo/softpos/leinaco;->acileon:Ljava/lang/String;

    iget v2, p0, Lcom/alcineo/softpos/leinaco;->aoleinc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Connecting to auth server: {}:{}"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/alcineo/softpos/leinaco;->enolcai:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/alcineo/softpos/leinaco;->acileon:Ljava/lang/String;

    iget v4, p0, Lcom/alcineo/softpos/leinaco;->aoleinc:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget v3, p0, Lcom/alcineo/softpos/leinaco;->noaceli:I

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    :try_start_0
    iget-object v1, p0, Lcom/alcineo/softpos/leinaco;->enolcai:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lcom/alcineo/softpos/leinaco;->enolcai:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    sget-object v1, Lcom/alcineo/softpos/leinaco;->nacieol:[B

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "Received {} bytes: {}"

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Lcom/alcineo/utils/common/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, p1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/alcineo/softpos/leinaco;->enolcai:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    return-object v1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/alcineo/softpos/leinaco;->enolcai:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    throw p1
.end method
