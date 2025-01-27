.class public Lcom/alcineo/softpos/noicale;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final acileon:I

.field private final aoleinc:I

.field private enolcai:[B

.field private nacieol:B

.field private final noaceli:I

.field private noelcai:[B

.field private ocenlai:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x4

    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alcineo/softpos/noicale;->enolcai:[B

    aget-byte v0, p1, v2

    iput-byte v0, p0, Lcom/alcineo/softpos/noicale;->ocenlai:B

    const/4 v0, 0x5

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/alcineo/softpos/noicale;->nacieol:B

    array-length v2, p1

    add-int/2addr v0, v1

    if-ne v2, v0, :cond_0

    array-length v0, p1

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lcom/alcineo/softpos/noicale;->noelcai:[B

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Buffer received not corresponding : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v1, "recordLen : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-byte v1, p0, Lcom/alcineo/softpos/noicale;->nacieol:B

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Buffer received not enougth : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public native acileon()[B
.end method

.method public native aoleinc()[B
.end method

.method public native enolcai()B
.end method

.method public native noaceli()B
.end method
